package data.assessment.project

class Classes {

      //properties
      //NOTE: DB creates ID for table
      String title;

      static hasMany = [ indicators : Indicators ]

    static constraints = {

      title  blank:false, minSize: 5, unique:true

    }
}
