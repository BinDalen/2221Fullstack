# Project Schema

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

+ Name of relations

+ All Attributes in the relation

+ Primary keys

+ Foreign keys

---

Member (<ins>MID</ins>, MName, Phone_No, Email_Addr)
Health_Condition (MID, Condition)

Hike (<ins>Event_Date</ins>, <ins>EID</ins>, Start_Time, Return_Time, Open_Seats)
Hike_Incidents (<ins>HikeID</ins>, <ins>MID</ins>, Incident)
Hike_Locations (<ins>LocID</ins>, Diff_Lvl, Terrain, Elevation, Total_Distance, Group_Size, Est_Dur)
Location_Gear(<ins>HikeID</ins>, <ins>EquipID</ins>, Quantity)

Registration_Record (<ins>Reg_Date</ins>, <ins>EventID</ins>, <ins>MID</ins>)

Instructor (<ins>EID</ins>, EName, EPhone, EAddress)

Purchase (<ins>Purchase_ID</ins>, Transac_Date, Amount, Remark)

---

## Revision of entities

```mermaid
classDiagram
  class Member {
    MName
    MPhone
    MEmail
    Prev_Conditions
    MID(Primary Key)
  }
  
  class Hike {
    Event_Date
    Start_Time
    Return_Time
    Open_Seats
    Incidents
    Event_Code(Primary Key)
    EID(Foreign Key)
    LocID(Foreign Key)
  }
  class Hike_Location {
    Diff_Lvl
    Elevation
    Total_Distance
    Group_Size
    Est_Dur
    LocID(Primary Key)
  }
  class Location_Gear {
    Quantity
    Equip(Primary Key)
    LocID(Foreign Key)
  }
  class Registration_Record {
    Reg_Date (Primary Key)
    Event_Code(Foreign Key)
    MID(Foreign Key)
  }
  class Instructor {
    EName
    EPhone
    EAddress
    EID (Primary Key)
  }
  class Purchase {
    Transac_Date
    Amount
    Remark
    PurchaseID (Primary Key)
    MID (Foreign Key)
  }
  Member --> Purchase
  Member --> Registration_Record
  Hike --> Registration_Record
  Hike_Location --> Hike
  Instructor --> Hike
  Hike_Location --> Location_Gear
```
