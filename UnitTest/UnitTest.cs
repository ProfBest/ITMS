using System;
using ITMS.BusinessObjects;
using ITMS.BusinessObjects.Collection;
using ITMS.BusinessObjects.Scholar;
using ITMS.BusinessObjects.Sponsor;


namespace UnitTest
{
    public  class UnitTest
    {


        public  void ModuleClassTest() {
            //Testing default Constructor
            Console.WriteLine("Testing default Constructor");
            Module objModule1 = new Module();
            Console.WriteLine("Id:{0}\nDescription: {1}", objModule1.ModuleId, objModule1.Description);

            Console.WriteLine("Testing paramitized Constructor");
            Module objModule2 = new Module(5, "Programming");
            Console.WriteLine("Id:{0}\nDescription: {1}", objModule2.ModuleId, objModule2.Description);

            Console.WriteLine("Testing Property SET");

            objModule1.ModuleId = 2;
            objModule1.Description = "VB.NET";

            Console.WriteLine();
       

            Console.WriteLine("Testing Property GET");
            Console.WriteLine("Id:{0}\nDescription: {1}", objModule1.ModuleId, objModule1.Description);
        }

        public  void PreferenceOptionClassTest() {
            
            Console.WriteLine("Testing Default Constructor");
            PreferenceOption objOption1 = new PreferenceOption();
            Console.WriteLine("Id:{0}\nDescription: {1}", objOption1.PreferenceId, objOption1.Description);

            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("Testing Parameterized Constructor");
            PreferenceOption objOption2 = new PreferenceOption(10, "Programming");

            Console.WriteLine("Id:{0}\nDescription: {1}", objOption2.PreferenceId, objOption2.Description);

            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("Testing Default Property SET");

            objOption1.PreferenceId = 21;
            objOption1.Description = "Security";

            Console.WriteLine("Id:{0}\nDescription: {1}", objOption1.PreferenceId, objOption1.Description);
        }

        public  void FileUploadClassTest() {
            Console.WriteLine("FileUpload class Test");
            Console.WriteLine();
            Console.WriteLine("Testing  Default Constructor");
            FileUpload objFileUpload = new FileUpload();

            Console.WriteLine("FileUploadId: {0} \nResume: {1} \nTranscript: {2}",
                objFileUpload.FileId, objFileUpload.Resume, objFileUpload.Transcript);

            Console.WriteLine();
            Console.WriteLine("Testing Property SET ");
            Console.WriteLine();
            objFileUpload.FileId = 6;
            objFileUpload.Resume = @"\\Somewhere\network\resume";
            objFileUpload.Transcript = @"\\Somewhere\network\transcript";

            Console.WriteLine("Testing Property GET ");
            Console.WriteLine();
            Console.WriteLine("FileUploadId: {0} \nResume: {1} \nTranscript: {2}",
                objFileUpload.FileId, objFileUpload.Resume, objFileUpload.Transcript);


        }

        public  void PrefercenceRankClassTest() {
            Console.WriteLine("Testing Preference Rank Class\n");


            Console.WriteLine("Testing Default Constructor");
            PreferenceRank objRank1 = new PreferenceRank();

            
            Console.WriteLine();
            Console.WriteLine("Pefernc is null: {0}\nRank: {1}", objRank1.Preference == null, objRank1.Rank);

            
            Console.WriteLine("Testing Parameterized Constructor");
            PreferenceRank objRank = new PreferenceRank(new PreferenceOption(2, "Programming"), 5);

            Console.WriteLine();
            Console.WriteLine("PefernceDescription: {0}\nRank: {1}", objRank.Preference.Description, objRank.Rank);

            Console.WriteLine("Testing Property  SET");
            Console.WriteLine();


            objRank1.Preference = new PreferenceOption(20, "Web Design");
            objRank1.Rank = 4;

            Console.WriteLine("Testing Property GET");
            Console.WriteLine("PefernceId: {2}\nPefernceDescription: {0}\nRank: {1}",
                objRank1.Preference.Description, objRank1.Rank, objRank1.Preference.PreferenceId);
        }

        public  void ModuleTakenClassTest()
        {
            Console.WriteLine("Testing Module Taken Class");
            Console.WriteLine("Testing Default Constructor");
            ModuleTaken objModTaken1 = new ModuleTaken();

            Console.WriteLine();
            Console.WriteLine("Module TakenID: {0}\n Module is null: {1}",
             objModTaken1.ModuleTakenId, objModTaken1.Module ==null);

            Console.WriteLine();

            ModuleTaken objModTaken2 = new ModuleTaken(new Module(4,"Web"));

            Console.WriteLine("Module TakenID: {0}\n Module is null: {1}", 
            objModTaken2.ModuleTakenId, objModTaken2.Module == null);

            Console.WriteLine();
            Console.WriteLine("Testing Property SET");

            Console.WriteLine();
            objModTaken1.ModuleTakenId = 4;
            objModTaken2.Module = new Module(2, "Security");


            Console.WriteLine("Module TakenID: {0}\n Module ID: {1}\n ModuleName {2}",
             objModTaken2.ModuleTakenId, objModTaken2.Module.ModuleId, objModTaken2.Module.Description);

        }

        public  void InternShipRequirementsClassTest() {
          
            //IntershipRequirement Section.
         

            //Testing default constructor

            InternshipRequirement objRequirement = new InternshipRequirement();
            //Testing Default Constructor
            Console.WriteLine();
            Console.WriteLine();
            Console.WriteLine("RequirementId= " + objRequirement.RequirementId);
            // Console.WriteLine("Intership StudentID is = " + objRequirement.StudentID);


            Console.WriteLine("DriverLicense is = " + objRequirement.DriverLicense);
            Console.WriteLine("Type is = " + objRequirement.InternshipType);

            Console.WriteLine("Owncar is = " + objRequirement.Owncar);
            Console.WriteLine("Travelnj is = " + objRequirement.TravelNJ);

            Console.WriteLine("TravelWestchesterNY is = " + objRequirement.TravelWestchester);
            Console.WriteLine("ResidenceStatus is = " + objRequirement.ResidenceStatus);
            Console.WriteLine("AnyLimitation is = " + objRequirement.Limitation);

            Console.WriteLine("LimitationExplain is = " + objRequirement.LimitationExplanation);
            Console.WriteLine("PrefernceRanks is null = " + objRequirement.PreferenceRanks == null);
            Console.WriteLine("ModulesTaken is null = " + objRequirement.ModulesTaken == null);


            //Testing PROPERTIES BY SETTING & GETTING PROPERTIES
            Console.WriteLine("Testing Property SET");
            Console.WriteLine();

            objRequirement.RequirementId = 40;
            objRequirement.DriverLicense = true;
            objRequirement.InternshipType = InternshipType.Project;
            objRequirement.Owncar = true;
            objRequirement.TravelNJ = true;
            objRequirement.TravelWestchester = true;
            objRequirement.ResidenceStatus = ResidenceStatus.PermanentResident;
            objRequirement.Limitation = true;
            objRequirement.LimitationExplanation = "Explanation goes here";

            objRequirement.ModulesTaken = new ModuleTakenCollection();
            objRequirement.PreferenceRanks = new PreferenceRankCollection();

            Console.WriteLine();
            Console.WriteLine();



            //Testing property SET by performing a PROPERTY GET. If what you GET is what you SET, properties are working
            
            Console.WriteLine("RequirementId= " + objRequirement.RequirementId);
            // Console.WriteLine("Intership StudentID is = " + objRequirement.StudentID);


            Console.WriteLine("DriverLicense is = " + objRequirement.DriverLicense);
            Console.WriteLine("Type is = " + objRequirement.InternshipType);

            Console.WriteLine("Owncar is = " + objRequirement.Owncar);
            Console.WriteLine("Travelnj is = " + objRequirement.TravelNJ);

            Console.WriteLine("TravelWestchesterNY is = " + objRequirement.TravelWestchester);
            Console.WriteLine("ResidenceStatus is = " + objRequirement.ResidenceStatus);
            Console.WriteLine("AnyLimitation is = " + objRequirement.Limitation);

            Console.WriteLine("LimitationExplain is = " + objRequirement.LimitationExplanation);
            Console.WriteLine("PrefernceRanks is null = " + objRequirement.PreferenceRanks == null);
            Console.WriteLine("ModulesTaken is null = " + objRequirement.ModulesTaken == null);


            Console.WriteLine();
            Console.WriteLine();

        }

        public void StudentClassTest()
        {
            //Create default Object
            Student objStudent1 = new Student();

            //Create Parameterize Object
            Student objstudent2 = default(Student);
            objstudent2 = new Student("123254411225554", "4098", "Alex", "Toledo", "4508 9th st", "NY", "NY", "11368", "9176270987", "9837647850",
                                      "9176286876",  3.5m, "christ80ecu@hotmail.com", new DateTime(2012, 6, 30), new InternshipRequirement(), new Employer());


            //*****************************************************************************
            //Testing Default Constructor by displaing the data inside the object
            Console.WriteLine("Testing Default Constructor");
            Console.WriteLine();
            Console.WriteLine("Student1 Id = " + objStudent1.StudentID);
            Console.WriteLine("Student1 First Name = " + objStudent1.FirstName);
            Console.WriteLine("Student1 Last Name = " + objStudent1.LastName);

            Console.WriteLine("Student1 Last 4 digit of SSNumber = " + objStudent1.Last4SSN);
            Console.WriteLine("Student1 Number & Address = " + objStudent1.Address);
            Console.WriteLine("Student1 City = " + objStudent1.City);

            Console.WriteLine("Student1 State = " + objStudent1.State);
            Console.WriteLine("Student1 Zipcode = " + objStudent1.Zipcode);
            Console.WriteLine("Student1 Day Phone = " + objStudent1.PhoneDay);

            Console.WriteLine("Student1 Evening Phone = " + objStudent1.PhoneEvening);
            Console.WriteLine("Student1 Cell Phone = " + objStudent1.PhoneCell);
            Console.WriteLine("Student1 Email = " + objStudent1.Email);

            //Console.WriteLine("Student1 Semester Attending = " + objStudent1.Semester);
            Console.WriteLine("Student1 Graduation Date = " + objStudent1.GraduationDate);
            Console.WriteLine("Student1 GPA = " + objStudent1.GPA);
            Console.WriteLine("Internship Requirement is null = " + (objStudent1.InternshipRequirement == null));
            Console.WriteLine("Employer is null = " + (objStudent1.Employer == null));

            Console.WriteLine();
            Console.WriteLine();
            //*****************************************************************************
            //Testing Parameterized Constructor by displaing the data inside the object
            Console.WriteLine("Testing Paremeterized Constructor");
            Console.WriteLine();
            Console.WriteLine("Student2 StudentId = " + objstudent2.StudentID);
            Console.WriteLine("Student2 First Name = " + objstudent2.FirstName);
            Console.WriteLine("Student2 Last Name = " + objstudent2.LastName);

            Console.WriteLine("Student2 Last 4 digit of SSNumber = " + objstudent2.Last4SSN);
            Console.WriteLine("Student2 Number & Address = " + objstudent2.Address);
            Console.WriteLine("Student2 City = " + objstudent2.City);

            Console.WriteLine("Student2 State = " + objstudent2.State);
            Console.WriteLine("Student2 Zipcode = " + objstudent2.Zipcode);
            Console.WriteLine("Student2 Day Phone = " + objstudent2.PhoneDay);

            Console.WriteLine("Student2 Evening Phone = " + objstudent2.PhoneEvening);
            Console.WriteLine("Student2 Cell Phone = " + objstudent2.PhoneCell);
            Console.WriteLine("Student2 Email = " + objstudent2.Email);

            // Console.WriteLine("Student2 Semester Attending = " + objstudent2.Semester);
            Console.WriteLine("Student2 Date of Birth = " + objstudent2.GraduationDate);
            Console.WriteLine("Student2 GPA = " + objstudent2.GPA);
            Console.WriteLine("Internship Requirement is null = " + (objstudent2.InternshipRequirement == null));
            Console.WriteLine("Employer is null = " + (objstudent2.Employer == null));


            //*****************************************************************************
            //Testing PROPERTIES BY SETTING & GETTING PROPERTIES
            Console.WriteLine("Testing Property SET");
            Console.WriteLine();
            objStudent1.StudentID = "123456789123456";
            objStudent1.FirstName = "Joe";
            objStudent1.LastName = "Smith";
            objStudent1.Last4SSN = "1234";
            objStudent1.Address = "333 Flatbush Avenue";
            objStudent1.City = "Brooklyn";
            objStudent1.State = "NY";
            objStudent1.Zipcode = "11201";
            objStudent1.PhoneDay = "7182605555";
            objStudent1.PhoneEvening = "7182605551";
            objStudent1.PhoneCell = "9172605552";
            objStudent1.Email = "jsmith@nyctc.com";
            //objStudent1.Semester = "Fall2012";
            objStudent1.GraduationDate = new DateTime(2012, 01, 01);
            objStudent1.GPA = 3.9m;
            objStudent1.Employer = new Employer(companyName:"CityGroup");
            objStudent1.InternshipRequirement = new InternshipRequirement() {DriverLicense = true};


            Console.WriteLine();
            Console.WriteLine();

            //Testing property SET by performing a PROPERTY GET. If what you GET is what you SET, properties are working
            Console.WriteLine("Testing Property GET");
            Console.WriteLine();
            Console.WriteLine("Student1 Id = " + objStudent1.StudentID);
            Console.WriteLine("Student1 First Name = " + objStudent1.FirstName);
            Console.WriteLine("Student1 Last Name = " + objStudent1.LastName);

            Console.WriteLine("Student1 Last 4 digit of SSNumber = " + objStudent1.Last4SSN);
            Console.WriteLine("Student1 Number & Address = " + objStudent1.Address);
            Console.WriteLine("Student1 City = " + objStudent1.City);

            Console.WriteLine("Student1 State = " + objStudent1.State);
            Console.WriteLine("Student1 Zipcode = " + objStudent1.Zipcode);
            Console.WriteLine("Student1 Day Phone = " + objStudent1.PhoneDay);

            Console.WriteLine("Student1 Evening Phone = " + objStudent1.PhoneEvening);
            Console.WriteLine("Student1 Cell Phone = " + objStudent1.PhoneCell);
            Console.WriteLine("Student1 Email = " + objStudent1.Email);

            //Console.WriteLine("Student1 Semester Attending = " + objStudent1.Semester);
            Console.WriteLine("Student1 Graduation Date = " + objStudent1.GraduationDate);
            Console.WriteLine("Student1 GPA = " + objStudent1.GPA);
            Console.WriteLine("Employer Name = " + objStudent1.Employer.CompanyName);
            Console.WriteLine("Requirement License = " + objStudent1.InternshipRequirement.DriverLicense);
            

            // Try to set GPA above 4.0

            try
            {
                objStudent1.GPA = 5m;
            } catch (Exception ex) {

                Console.WriteLine(ex.Message);
            }


            // Try to seting GPA below 4.0
            try {
                objStudent1.GPA = -1.5m;
            } catch (Exception ex) {

                Console.WriteLine(ex.Message);
            }

            Console.WriteLine();
            Console.WriteLine();
            //*****************************************************************************
            //Testing Methods
            //objStudent1.Load("111");
            //Console.WriteLine();

            //objStudent1.Update();
            //Console.WriteLine();

            //objStudent1.Insert();
            //Console.WriteLine();

            //objStudent1.Delete("111");
            //Console.WriteLine();

        }

        public  void EmployerClassTest() {



            Employer objEmployer = new Employer();


            //Testing default constructor
            //Testing Default Constructor
            Console.WriteLine("Student CST4905Student_EmpID is = " + objEmployer.EmployerId);
            Console.WriteLine("Student Title is = " + objEmployer.Title);

            Console.WriteLine("Student CompanyName is = " + objEmployer.CompanyName);
            Console.WriteLine("Student Department is = " + objEmployer.Department);
            Console.WriteLine("Student Manager is = " + objEmployer.SupervisorName);

            Console.WriteLine("Student Address is = " + objEmployer.Address);
            Console.WriteLine("Student City is = " + objEmployer.City);
            Console.WriteLine("Student State is = " + objEmployer.State);

            Console.WriteLine("Student ZipCode is = " + objEmployer.Zipcode);
            Console.WriteLine("Student Phone is = " + objEmployer.PhoneNumber);
            Console.WriteLine("Student Duties is = " + objEmployer.Duties);

            //Testing PROPERTIES BY SETTING & GETTING PROPERTIES
            Console.WriteLine("Testing Property SET");
            Console.WriteLine();

            objEmployer.EmployerId = 12;
            objEmployer.Title = "Programmer";
            objEmployer.CompanyName = "Sunrise";
            objEmployer.Department = "IT";
            objEmployer.SupervisorName = "Roger Razim";
            objEmployer.Address = "76 Stone St";

            objEmployer.City = "New York";
            objEmployer.State = "NY";
            objEmployer.Zipcode = "11368";
            objEmployer.PhoneNumber = "917-487-5876";
            objEmployer.Duties = "Debuger";



            Console.WriteLine();
            Console.WriteLine();


            //Testing property SET by performing a PROPERTY GET. If what you GET is what you SET, properties are working
            Console.WriteLine("Testing Property GET");
            Console.WriteLine();
            Console.WriteLine("CST4905 Student CST 4905 EMPID = " + objEmployer.EmployerId);
            Console.WriteLine("CST4905 Student Title  = " + objEmployer.Title);

            Console.WriteLine("CST4905 Student CompanyName  = " + objEmployer.CompanyName);
            Console.WriteLine("CST4905 Student Department  = " + objEmployer.Department);
            Console.WriteLine("CST4905 Student Manager  = " + objEmployer.SupervisorName);

            Console.WriteLine("CST4905 Student Address  = " + objEmployer.Address);
            Console.WriteLine("CST4905 Student City  = " + objEmployer.City);
            Console.WriteLine("CST4905 Student State  = " + objEmployer.State);

            Console.WriteLine("CST4905 Student Zip = " + objEmployer.Zipcode);
            Console.WriteLine("CST4905 Student Phone  = " + objEmployer.PhoneNumber);
            Console.WriteLine("CST4905 Student Duties  = " + objEmployer.Duties);


            Console.WriteLine();
            Console.WriteLine();

        }
        
  
        public  void PositionClassTest()
        {
            //'**************************************************************************IntershipPosition*********************************************************************************

            //IntershipPosition section



            Position objPosition = new Position();

          
            //Testing default constructor
            Console.WriteLine("InternshipPositionID is = " + objPosition.PositionId);
            //Console.WriteLine("Intership SponsorCompanyID is = " + objPosition.SponsorCompanyID);

            Console.WriteLine("Intership PositionType is = " + objPosition.PositionType);
            Console.WriteLine("Intership PositionTitle is = " + objPosition.Title);
            Console.WriteLine("Intership Description is = " + objPosition.Duties);
            Console.WriteLine("Intership SkillSet is = " + objPosition.Skills);
            Console.WriteLine("Intership WorkHours is = " + objPosition.WorkHours);
            Console.WriteLine("Intership NumWorkDays is = " + objPosition.WorkDays);



            //Testing PROPERTIES BY SETTING & GETTING PROPERTIES
            Console.WriteLine("Testing Property SET");
            Console.WriteLine();

            objPosition.PositionId = 9;
            //objPosition.SponsorCompanyID = 12;
            objPosition.PositionType = PositionType.Volunteer;
            objPosition.Title = "IT Intern";
            objPosition.Duties = "Help desk";
            objPosition.Skills = "AAA";
            objPosition.WorkHours = 32;

            objPosition.WorkDays = 5;


            Console.WriteLine();
            Console.WriteLine();






            //Testing property SET by performing a PROPERTY GET. If what you GET is what you SET, properties are working
            Console.WriteLine("Testing Property GET");
            Console.WriteLine();
            Console.WriteLine(" InternshipPositionID= " + objPosition.PositionId);
            //Console.WriteLine(" SponsorCompanyID  = " + objPosition.SponsorCompanyID);
            Console.WriteLine("  PositionType  = " + objPosition.PositionType);

            Console.WriteLine(" PositionTitle  = " + objPosition.Title);
            Console.WriteLine(" Description  = " + objPosition.Duties);
            Console.WriteLine(" SkillSet  = " + objPosition.Skills);

            Console.WriteLine(" WorkHours  = " + objPosition.WorkHours);

            Console.WriteLine(" NumWorkDays  = " + objPosition.WorkDays);


            Console.WriteLine();
            Console.WriteLine();


        }

        //************************************************
        //Code to UNIT Test CST4905Employer Class
   

        //Code to UNIT Test SponsorCompany Class
        public  void SponsorCompanyClassTest()
        {
            //**************************************************************************SponsorCompany*********************************************************************************



            Company m_objSponsor_Company = new Company();

            //Testing default constructor
            //Testing Default Constructor

            Console.WriteLine();
            Console.WriteLine();

            Console.WriteLine("Sponsor Company is = " + m_objSponsor_Company.CompnayId);

            Console.WriteLine("Sponsor CompanyName is = " + m_objSponsor_Company.CompanyName);
            Console.WriteLine("Sponsor Address is = " + m_objSponsor_Company.Address);
            Console.WriteLine("Sponsor City is = " + m_objSponsor_Company.City);
            Console.WriteLine("Sponsor State is =" + m_objSponsor_Company.State);
            Console.WriteLine("Sponsor ZipCode is = " + m_objSponsor_Company.Zipcode);
            Console.WriteLine("Sponsor Phone is = " + m_objSponsor_Company.PhoneNumber);
            Console.WriteLine();
            Console.WriteLine();


            Company m_objSponsor_Company_parameterized = default(Company);
            m_objSponsor_Company_parameterized = new Company("My Company", "917-628-6863", "45-08 97th", "NY", "New York", "11368");


            Console.WriteLine("Testing Parametirized constructor");
            Console.WriteLine();
            Console.WriteLine("Student2 CompanyName = " + m_objSponsor_Company_parameterized.CompanyName);
            Console.WriteLine("Student2 Address = " + m_objSponsor_Company_parameterized.Address);
            Console.WriteLine("Student2 City = " + m_objSponsor_Company_parameterized.City);
            Console.WriteLine("Student2 State = " + m_objSponsor_Company_parameterized.State);
            Console.WriteLine("Student2 ZipCode = " + m_objSponsor_Company_parameterized.Zipcode);
            Console.WriteLine("Student1 Phone = " + m_objSponsor_Company_parameterized.PhoneNumber);


            //Testing PROPERTIES BY SETTING & GETTING PROPERTIES
            Console.WriteLine("Testing Property SET");
            Console.WriteLine();

            m_objSponsor_Company.CompnayId = 9;
            m_objSponsor_Company.CompanyName = "My NYC Company";
            m_objSponsor_Company.Address = "48 White St";
            m_objSponsor_Company.City = "Stamford";
            m_objSponsor_Company.State = "CT";
            m_objSponsor_Company.Zipcode = "11385";
            m_objSponsor_Company.PhoneNumber = "917-983-3388";


            Console.WriteLine();
            Console.WriteLine();






            //Testing property SET by performing a PROPERTY GET. If what you GET is what you SET, properties are working
            Console.WriteLine("Testing Property GET");
            Console.WriteLine();
            Console.WriteLine(" Sponsor company = " + m_objSponsor_Company.CompnayId);
            Console.WriteLine(" Company name  = " + m_objSponsor_Company.CompanyName);
            Console.WriteLine(" Company address  = " + m_objSponsor_Company.Address);

            Console.WriteLine(" Company City  = " + m_objSponsor_Company.City);
            Console.WriteLine(" State  = " + m_objSponsor_Company.State);
            Console.WriteLine(" City  = " + m_objSponsor_Company.Zipcode);

            Console.WriteLine(" Phone  = " + m_objSponsor_Company.PhoneNumber);



            Console.WriteLine();
            Console.WriteLine();

        }

        //************************************************
        //Code to UNIT Test SponsorManager Class

        public  void SponsorManagerClassTest()
        {

            //**************************************************************************SponsorManager*********************************************************************************

            //SponsorManager(section)



            Manager m_objSponsor_Manager = new Manager();
            //Testing default constructor
            //Testing Default Constructor


            Console.WriteLine("Sponsor SponsorManagerID is = " + m_objSponsor_Manager.ManagerId);

            Console.WriteLine("Sponsor Firstname is = " + m_objSponsor_Manager.FirstName);
            Console.WriteLine("Sponsor Lastname is = " + m_objSponsor_Manager.LastName);
            Console.WriteLine("Sponsor Title is = " + m_objSponsor_Manager.Title);
            Console.WriteLine("Sponsor Department is = " + m_objSponsor_Manager.Department);
            Console.WriteLine("Sponsor Organization is =" + m_objSponsor_Manager.Organization);
            Console.WriteLine("Sponsor Address is = " + m_objSponsor_Manager.Address);
            Console.WriteLine("Sponsor City is = " + m_objSponsor_Manager.City);
            Console.WriteLine("Sponsor State is = " + m_objSponsor_Manager.State);
            Console.WriteLine("Sponsor ZipCode is = " + m_objSponsor_Manager.Zipcode);
            Console.WriteLine("Sponsor WorkPhone is =" + m_objSponsor_Manager.PhoneWork);
            Console.WriteLine("Sponsor CellPhone is = " + m_objSponsor_Manager.PhoneCell);
            Console.WriteLine("Sponsor Email is = " + m_objSponsor_Manager.Email);


            // Testing PROPERTIES BY SETTING & GETTING PROPERTIES
            Console.WriteLine("Testing Property SET");
            Console.WriteLine();

            m_objSponsor_Manager.ManagerId = 9;
            m_objSponsor_Manager.FirstName = "48 White St";
            m_objSponsor_Manager.LastName = "Stamford";
            m_objSponsor_Manager.Title = "CT";
            m_objSponsor_Manager.Department = "11385";
            m_objSponsor_Manager.Organization = "917-983-3388";

            m_objSponsor_Manager.Address = "32 Cupper St";
            m_objSponsor_Manager.City = "Danbury";
            m_objSponsor_Manager.State = "CT";
            m_objSponsor_Manager.Zipcode = "11368";
            m_objSponsor_Manager.PhoneWork = "212-983-7487";

            m_objSponsor_Manager.PhoneCell = "347-9839-6765";
            m_objSponsor_Manager.Email = "christ80e@htoamil.com";



            Console.WriteLine();
            Console.WriteLine();






            //Testing property SET by performing a PROPERTY GET. If what you GET is what you SET, properties are working
            Console.WriteLine("Testing Property GET");
            Console.WriteLine();
            Console.WriteLine(" Manager ID= " + m_objSponsor_Manager.ManagerId);
            Console.WriteLine(" Manager Firstname  = " + m_objSponsor_Manager.FirstName);

            Console.WriteLine(" Manager Lastname  = " + m_objSponsor_Manager.LastName);
            Console.WriteLine(" Manager title  = " + m_objSponsor_Manager.Title);
            Console.WriteLine(" Manager department  = " + m_objSponsor_Manager.Department);

            Console.WriteLine(" Manager organization  = " + m_objSponsor_Manager.Organization);

            Console.WriteLine(" Manager Address  = " + m_objSponsor_Manager.Address);
            Console.WriteLine(" City  = " + m_objSponsor_Manager.City);
            Console.WriteLine(" State  = " + m_objSponsor_Manager.State);

            Console.WriteLine(" Zip = " + m_objSponsor_Manager.Zipcode);
            Console.WriteLine(" Work phone  = " + m_objSponsor_Manager.PhoneWork);
            Console.WriteLine(" Cell phone  = " + m_objSponsor_Manager.PhoneCell);
            Console.WriteLine(" Email= " + m_objSponsor_Manager.Email);

            Console.WriteLine();
            Console.WriteLine();

        }
    }


}
