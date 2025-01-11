# CS342_Assignment1
This project is a simple data model for patient records and medications, offering functionality for tracking patient details, prescribing medications, and determining blood type compatibility.

## Classes and Enums

### 1. **Medication**
This class represents a medication with attributes like name, dosage, route, frequency, and duration. It automatically tracks whether the course is completed.

### 2. **Patient**
This class stores patient information such as name, date of birth, height, weight, blood type, and a list of medications. Includes methods to calculate age, prescribe medications, and retrieve active medications.

### 3. **BloodType**
This enum represents blood types (`A+`, `O-`, etc.), with a Patient method to determine compatible donors.

---

## Key Functions

### **Medication**
- `init`: initializes a medication with required and optional variables. 
- `checkCompleted`: Marks a medication as completed if its duration has elapsed.
- `description`: Provides a readable summary of the medication. Uses CustomStringConvertible extensions.

### **Patient**
- `init`: initializes a patient with a automatically generated patient ID, it doesn't require blood type to be known at the time of creation.
- `calculateAge`: Computes the patient’s age and returns it in years.
- `returnDonorBloodTypes`: Lists compatible blood types for transfusion.
- `prescribeMedication`: Adds a medication while preventing duplicates.
- `returnactiveMedications`: Retrieves active medications, sorted by date.
- `description`: Provides a readable summary of the medication using CustomStringConvertible.

### **Blood Type**
- `description`: Provides a readable summary of the blood type using CustomStringConvertible.
---

## Testing

### Test Cases
- **Patient Tests**:
  - Verify patient creation, blood type management, and donor compatibility.
- **Medication Tests**:
  - Test medication creation, duplication prevention, and retrieval of active medications.

### Key Test Functions
7 test functions test the initialization of classes and methods, here are the key ones:
- `create_patient`: Tests patient creation and details.
- `createMedication`: Tests medication initialization.
- `prescribeMedication`: Verifies medication prescription handling.
- `getlistofMedications`: Ensures proper retrieval of active medications.
- `setbloodtype_returndonorlist`: Returns list of possible blood transfusion donors for the patient.

