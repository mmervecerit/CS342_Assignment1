//
//  ContentView.swift
//  CS342-Assignment1
//
//  Created by Merve Cerit on 1/8/25.
//

import SwiftUI
enum MedicationError:Error{
    case duplicateMedication
    case invalidDate
}
enum PatientError:Error{
    case invalidDateofBirth
    case AgeCalculationError
}
struct ContentView: View {
    
    let medication: Medication = {
        do {
            return try Medication(
                dateString: "12/7/24",
                dateFormat: "MM/dd/yy",
                name: "TestMed1",
                dose: 25.5,
                route: "by mouth",
                frequency: 2,
                duration: 7
            )
        }catch{
            fatalError("Failed to initialize medication: \(error)")
        }
    }()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(medication.description)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
