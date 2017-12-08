package data.assessment.project

class IndicatorsController {

    def index() {
      def indicators = Indicators.findAllByAcademicYear(Settings.first().academicYear)
      [Indicators:indicators]
    }

    def create() {
      def classes = Classes.list()
      if (request.method == 'POST') {
        if(!params.submitButton.contains("Cancel")){
          def i = new Indicators()
          def o = Outcomes.get(params.outcomeId)
          System.out.println(o)
          def c = Classes.get(params.classId)
          i.indicatorName = params.indicatorName
          i.indicatorDescription = params.indicatorDescription
          i.academicYear = Settings.first().academicYear
          o.addToIndicators(i)
          if(c != null){
          i.addToClasses(c)
          if(!c.save(flush:true)){
            return [indicator:i, Classes:classes]
            redirect(view:"/indicators/create")
          }
          }
            if(!i.save(flush:true)){
              return [indicator:i, Classes:classes]
              redirect(view:"/indicators/create")
            }
          if(!o.save(flush:true)){
            return [indicator:i, Classes:classes]
            redirect(view:"/indicators/create")
          }
        }
        redirect(controller:"outcomes")
      }
      return [outcomeId:params.outcomeId, Classes:classes]
    }

    def delete() {
      def i = Indicators.get(params.indicator)
      if (i.classes != null) {
          def coursesList = []
          i.classes.each { course->
            //i.removeFromClasses(course)                           //save the course IDs in a list for removing association from indicator
            coursesList.add(course.id)
        }
        for (int j = 0; j<coursesList.size(); j++) {                //run through coursesList and get the course object and then remove from the indicator Classes association
            def courseToBeRemoved = Classes.get(coursesList[j])
            i.removeFromClasses(courseToBeRemoved)
        }
      }
      i.delete(flush:true)
      redirect(controller:'outcomes')
    }

    def edit() {
      if (request.method == 'POST') {
        if(!params.submitButton.contains("Cancel")){
          def i = Indicators.get(params.id)
          i.indicatorName = params.indicatorName
          i.indicatorDescription = params.indicatorDescription
            if(!i.save(flush:true)){
              return [indicators:i, id:i.id]
              redirect(view:"/indicators/editIndicator")
            }
        }
        redirect(controller:"outcomes")
      }else{
        def i = indicators.get(params.indicators)
        return [indicators:i, id:i.id]
        redirect(view:"/indicators/editIndicator")
      }
    }

}
