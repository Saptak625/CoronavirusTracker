class User{
  let id: Int
  var riskAssesment: RiskValues
  var status: InfectionStatus
  static var currentDatabaseId: Int=1

  init(){
    riskAssesment = .green
    status = .negative
    id=User.currentDatabaseId
    User.currentDatabaseId+=1
  }

  func evaluateRisk(){
    //Insert risk assesment algorithm
    if status == .positive{
      riskAssesment = .red
    }else{
      let numOfContactedPeople=getNumOfContactedInfections()
      if numOfContactedPeople<=1{
        riskAssesment = .green
      }else if numOfContactedPeople<=3{
        riskAssesment = .yellow
      }else{
        riskAssesment = .red
      }
    }
  }

  class func updateDatabaseId(_ id: Int){
    User.currentDatabaseId=id
  }

  func checkInfection(){
    let numOfQuestions=3
    let symptoms=2
    let testConducted=true
    let testResult = InfectionStatus.negative
    status=(testConducted && testResult == .positive) || (Double(symptoms)/Double(numOfQuestions)>=0.4 || getNumOfContactedInfections()>=1) ? .positive : .negative
    print(status == .positive ? "You may have contacted Covid-19. We recommend that you quarantine for 8-12 days to save lives." : "You have most likely not contracted Covid-19. However, just to be sure, we recommend that you quarantine for 3-5 days to see if symptoms progress.")
    evaluateRisk()
  }

  func getNumOfContactedInfections() -> Int{
    //Would perform math of number of contacted people
    return 2
  }
}