# Project ER Diagram

In this diagram, entities and their attributes are shown, along with rudimentary relationships:

```mermaid
classDiagram

  class Member {
    +MID (Key)
    +MName
    +Phone_No
    +Email_Addr
    +Health_Cond (Multi-valued, Weak)
    +Remain_Hikes (Derived)
  }

  class Hike {
    +Event_Date (Key)
    +Start_Time
    +Return_Time
    +Duration (Derived)
    +Open_Seats
    +Incidents (Weak)
  }

  class Purchase {
    +PurchaseID (Key)
    +Transac_Date
    +Amount_Paid
    +Payment_Rmrk
  }

  class Hike_Location {
    +Loc_Name (Key)
    +Diff_Lvl
    +Terrain
    +Elevation
    +Total_Distance
    +Estimated_Dur
    +Group_Size
    +Rqr_Gear (Weak)
  }

  class Instructor {
    +EID (Key)
    +EName
    +EAge
  }

  class Registration_Record {
    +Reg_Date
  }

  Member "1" -- "n" Purchase: Made_Payment
  Instructor "1" -- "n" Hike: Instructing
  Hike_Location "1" -- "n" Hike: Scheduled_at
  Member "1" -- "1" Registration_Record: Registered_in
  Registration_Record "n" -- "1" Hike: Seat_Allocated
```

In this diagram, the relationships between entities could be described in further detail:

```mermaid
erDiagram
  Member || -- |{ Purchase: "Paid"
  Member || .. || Registration-Record: "Registered"
  Hike-Location || -- o{ Hike: "Scheduled"
  Instructor || -- o{ Hike: "Instructing"
  Registration-Record }o -- || Hike: "Reserved-Seat"
```

> `||`: exactly one
> `o{`: zero or more
> `|{`: one or more

Additional Notes:

+ Each member must have a purchase record since their first purchase occurs during registration.

+ Members may or may not have registered in a hike before.

+ Members may not have concurrent bookings.

+ Every hike must be instructed by an employee.

+ Each hike contains a trip to one destination only.