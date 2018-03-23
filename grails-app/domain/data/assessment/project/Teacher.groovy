package data.assessment.project

class Teacher {

  //NOTE: DB creates ID for table
  // time stamps: automatically populated by GORM
  Date dateCreated;
  Date lastUpdated;

  // properties
  String firstName;
  String lastName;
  String username;
  String password;        // plain text, not stored
  String confirm;         // plain text, not stored
  String passwordHashed;
  boolean admin;
  Document profilePic;
  boolean urlSignup;


  static mapping = {
      sort lastName: "asc"
  }


  // transients
  static transients = ['password', 'confirm']


    static constraints = {
      firstName blank:false
      confirm blank:false
      lastName  blank:false
      profilePic nullable:true
      username  blank:false, size:5..15, matches:/[\S]+/, unique:true
      password  blank:false, size:5..15, matches:/[\S]+/, validator:{ val, obj ->
          if (obj.password != obj.confirm)
              return 'teacher.password.dontmatch'
      }
    }

    String toString(){
      return firstName + " " + lastName
    }
}
