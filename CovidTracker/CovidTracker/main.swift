//
//  main.swift
//  CovidTracker
//
//  Created by Asrith Sreeram on 11/14/20.
//  Copyright © 2020 Asrith Sreeram. All rights reserved.
//

import Foundation

print(User.currentDatabaseId)
var user1=User()
print(user1)
print(user1.riskAssesment)
user1.evaluateRisk()
print(user1.riskAssesment)
user1.checkInfection()
print(user1.riskAssesment)
