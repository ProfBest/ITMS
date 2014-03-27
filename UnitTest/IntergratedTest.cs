using System;
using ITMS.BusinessObjects;
using ITMS.BusinessObjects.Collection;
using ITMS.BusinessObjects.Scholar;
using ITMS.BusinessObjects.Sponsor;


namespace UnitTest
{
    public class IntergratedTest
    {
        public static string StudentInsert()
        {
            Console.WriteLine("Loading Modules from the Database");
            ModuleCollection objModules = ModuleCollection.GetAll();
            foreach (var m in objModules)
            {
                Console.WriteLine("ModuleId: {0} Description: {1}", m.ModuleId, m.Description);
            }

            Console.WriteLine();


            Console.WriteLine("Loading Preference from the Database");
            PreferenceOptionCollection objPrefrences = PreferenceOptionCollection.GetAll();
            foreach (var p in objPrefrences)
            {
                Console.WriteLine("PrefernceId: {0} Description: {1}", p.PreferenceId, p.Description);
            }


            Console.WriteLine();

            PreferenceRankCollection objPrefernceRanks = new PreferenceRankCollection()
                                                         {
                                                             new PreferenceRank(objPrefrences[0], 1),
                                                             new PreferenceRank(objPrefrences[1], 5),
                                                             new PreferenceRank(objPrefrences[2], 3),
                                                             new PreferenceRank(objPrefrences[3], 4),
                                                         };



            ModuleTakenCollection objModulesTaken = new ModuleTakenCollection
                                                    {
                                                        new ModuleTaken(objModules[0]),
                                                        new ModuleTaken(objModules[1]),
                                                        new ModuleTaken(objModules[2]),
                                                    };



            FileUpload objFileUpload = new FileUpload
                                       {
                                           Resume = @"\\somewhere\Resume",
                                           Transcript = @"\\somewhere\Transcript",
                                       };

            InternshipRequirement objRequirement = new InternshipRequirement
                                                   {
                                                       DriverLicense = true,
                                                       InternshipType = InternshipType.Project,
                                                       Owncar = true,
                                                       TravelNJ = true,
                                                       TravelWestchester = true,
                                                       ResidenceStatus = ResidenceStatus.PermanentResident,
                                                       Limitation = true,
                                                       LimitationExplanation = "Explanation goes here",
                                                       Semester = "Fall 2013",
                                                       PreferenceRanks = objPrefernceRanks,
                                                       ModulesTaken = objModulesTaken,
                                                       FileUpload = objFileUpload
                                                   };

            Employer objEmployer = new Employer
                                   {
                                       Title = "Programmer",
                                       CompanyName = "Sunrise",
                                       Department = "IT",
                                       SupervisorName = "Roger Razim",
                                       Address = "76 Stone St",
                                       City = "New York",
                                       State = "NY",
                                       Zipcode = "11368",
                                       PhoneNumber = "917-487-5876",
                                       Duties = "Debuger"
                                   };

            var objStudent = new Student
                             {
                                 StudentID = "89498196",
                                 FirstName = "Joe",
                                 LastName = "Smith",
                                 Last4SSN = "1234",
                                 Address = "333 Flatbush Avenue",
                                 City = "Brooklyn",
                                 State = "NY",
                                 Zipcode = "11201",
                                 PhoneDay = "7182605555",
                                 PhoneEvening = "7182605551",
                                 PhoneCell = "9172605552",
                                 Email = "jsmith@nyctc.com",
                                 GraduationDate = new DateTime(2012, 01, 01),
                                 GPA = 3.9m,
                                 InternshipRequirement = objRequirement,
                                 Employer = objEmployer
                             };

            objStudent.Insert();



            return objStudent.StudentID;
        }


        public static void   StudentLoad(string studentId)
        {

            var objStudent2 = Student.Load("89498196");

            string line = "--------------------------------------------";
            Console.WriteLine();

            Console.WriteLine("{0}\nStudent Properties\n{0}", line);

            Console.WriteLine("Student2 StudentId = " + objStudent2.StudentID);
            Console.WriteLine("Student2 First Name = " + objStudent2.FirstName);
            Console.WriteLine("Student2 Last Name = " + objStudent2.LastName);

            Console.WriteLine("Student2 Last 4 digit of SSNumber = " + objStudent2.Last4SSN);
            Console.WriteLine("Student2 Number & Address = " + objStudent2.Address);
            Console.WriteLine("Student2 City = " + objStudent2.City);

            Console.WriteLine("Student2 State = " + objStudent2.State);
            Console.WriteLine("Student2 Zipcode = " + objStudent2.Zipcode);
            Console.WriteLine("Student2 Day Phone = " + objStudent2.PhoneDay);

            Console.WriteLine("Student2 Evening Phone = " + objStudent2.PhoneEvening);
            Console.WriteLine("Student2 Cell Phone = " + objStudent2.PhoneCell);
            Console.WriteLine("Student2 Email = " + objStudent2.Email);

            // Console.WriteLine("Student2 Semester Attending = " + objStudent2.Semester);
            Console.WriteLine("Student2 Graduation Date= " + objStudent2.GraduationDate);
            Console.WriteLine("Student2 GPA = " + objStudent2.GPA);

            Console.WriteLine();

            Console.WriteLine("{0}\nEmployer Properties\n{0}", line);

            Console.WriteLine();
            Console.WriteLine("Employer ID = " + objStudent2.Employer.EmployerId);
            Console.WriteLine("Employer Title is = " + objStudent2.Employer.Title);

            Console.WriteLine("Employer CompanyName is = " + objStudent2.Employer.CompanyName);
            Console.WriteLine("Employer Department is = " + objStudent2.Employer.Department);
            Console.WriteLine("Employer Manager is = " + objStudent2.Employer.SupervisorName);

            Console.WriteLine("Employer Address is = " + objStudent2.Employer.Address);
            Console.WriteLine("Employer City is = " + objStudent2.Employer.City);
            Console.WriteLine("Employer State is = " + objStudent2.Employer.State);

            Console.WriteLine("Employer ZipCode is = " + objStudent2.Employer.Zipcode);
            Console.WriteLine("Employer Phone is = " + objStudent2.Employer.PhoneNumber);
            Console.WriteLine("Employer Duties is = " + objStudent2.Employer.Duties);

            Console.WriteLine();

            Console.WriteLine("{0}\nInternship Requirement Properties\n{0}", line);


            Console.WriteLine("RequirementId= " + objStudent2.InternshipRequirement.RequirementId);
            // Console.WriteLine("Intership StudentID is = " + objStudent2.InternshipRequirement.StudentID);


            Console.WriteLine("DriverLicense is = " + objStudent2.InternshipRequirement.DriverLicense);
            Console.WriteLine("Type is = " + objStudent2.InternshipRequirement.InternshipType);

            Console.WriteLine("Owncar is = " + objStudent2.InternshipRequirement.Owncar);
            Console.WriteLine("Travelnj is = " + objStudent2.InternshipRequirement.TravelNJ);

            Console.WriteLine("TravelWestchesterNY is = " + objStudent2.InternshipRequirement.TravelWestchester);
            Console.WriteLine("ResidenceStatus is = " + objStudent2.InternshipRequirement.ResidenceStatus);
            Console.WriteLine("AnyLimitation is = " + objStudent2.InternshipRequirement.Limitation);

            Console.WriteLine("LimitationExplain is = " + objStudent2.InternshipRequirement.LimitationExplanation);
            Console.WriteLine("PrefernceRanks is null = " + (objStudent2.InternshipRequirement.PreferenceRanks == null));
            Console.WriteLine("ModulesTaken is null = " + (objStudent2.InternshipRequirement.ModulesTaken == null));


            Console.WriteLine();

            Console.WriteLine("{0}\nFile upload Properties\n{0}", line);

            Console.WriteLine("FileUploadId: {0} \nResume: {1} \nTranscript: {2}",
                              objStudent2.InternshipRequirement.FileUpload.FileId,
                              objStudent2.InternshipRequirement.FileUpload.Resume,
                              objStudent2.InternshipRequirement.FileUpload.Transcript);

            Console.WriteLine();

            Console.WriteLine("{0}\nModule Taken Properties\n{0}", line);

            int counter = 0;
            foreach (var m in objStudent2.InternshipRequirement.ModulesTaken)
            {
                Console.WriteLine("{0}\nModule #{1} \n{0}", line, ++counter);

                Console.WriteLine("Module TakenID: {0}\nModule ID: {1}\nModuleName {2}",
                                  m.ModuleTakenId, m.Module.ModuleId, m.Module.Description);
            }

            counter = 0;


            Console.WriteLine();

            Console.WriteLine("{0}\nPreference Rank Section Properties\n{0}", line);
            foreach (var objRank1 in objStudent2.InternshipRequirement.PreferenceRanks)
            {
                Console.WriteLine("{0}\nPrefernce #{1} \n{0}", line, ++counter);

                Console.WriteLine("PefernceId: {2}\nPefernceDescription: {0}\nRank: {1}",
                                  objRank1.Preference.Description, objRank1.Rank, objRank1.Preference.PreferenceId);
            }

        }

        public static int SponsorCompanyInsert()
        {

            //Create Company
            Company objCompany = new Company
                                 {
                                     CompanyName = "My NYC Company",
                                     Address = "48 White St",
                                     City = "Stamford",
                                     State = "CT",
                                     Zipcode = "11385",
                                     PhoneNumber = "917-983-3388"
                                 };

            //insert Company
            objCompany.Insert();

            //Create Manager
            Manager objManager1 = new Manager
                                  {
                                      ManagerId = 9,
                                      FirstName = "John",
                                      LastName = "Doe",
                                      Title = "CT",
                                      Department = "11385",
                                      Organization = "917-983-3388",
                                      Address = "32 Cupper St",
                                      City = "Danbury",
                                      State = "CT",
                                      Zipcode = "11368",
                                      PhoneWork = "212-983-7487",
                                      PhoneCell = "347-9839-6765",
                                      Email = "christ80e@htoamil.com"
                                  };

            //Insert Manager
            objCompany.AddManager(objManager1);


            //Create Position
            Position objPosition1 = new Position
                                    {
                                        PositionType = PositionType.Volunteer,
                                        Title = "IT Intern",
                                        Duties = "Help desk",
                                        Skills = "AAA",
                                        WorkHours = 32,
                                        WorkDays = 5
                                    };

            //Insert posistion
            objManager1.AddPosition(objPosition1);


            Manager objManager2 = new Manager
                                  {

                                      FirstName = "Stacy",
                                      LastName = "Lane",
                                      Title = "Big Boss",
                                      Department = "Sales",
                                      Organization = "SP Developers",
                                      Address = "300 Jay St",
                                      City = "Brooklyn",
                                      State = "NY",
                                      Zipcode = "11218",
                                      PhoneWork = "718-897-4981",
                                      PhoneCell = "615-520-8481",
                                      Email = "something@gmail.com"
                                  };

            objCompany.AddManager(objManager2);

            Position objPosition2 = new Position
                                    {
                                        PositionType = PositionType.Paid,
                                        Title = "Developer",
                                        Duties = "Build Applications",
                                        Skills = "C#, VB.NET",
                                        WorkHours = 40,
                                        WorkDays = 6
                                    };


            Position objPosition3 = new Position
                                    {
                                        PositionType = PositionType.Credit,
                                        Title = "Assistant",
                                        Duties = "Assist CEO",
                                        Skills = "Book keeping",
                                        WorkHours = 20.6m,
                                        WorkDays = 3.5m
                                    };

            objManager2.AddPosition(objPosition2);
            objManager2.AddPosition(objPosition3);

            return objCompany.CompnayId;

        }


        public static void SponsorCompanyLoad(int companyId)
        {
            string line = "--------------------------------------------";
            Company objCompany = Company.Load(companyId);



            Console.WriteLine();

            Console.WriteLine("{0}\nCompany Properties\n{0}", line);

            Console.WriteLine(" Sponsor company = " + objCompany.CompnayId);
            Console.WriteLine(" Company name  = " + objCompany.CompanyName);
            Console.WriteLine(" Company address  = " + objCompany.Address);

            Console.WriteLine(" Company City  = " + objCompany.City);
            Console.WriteLine(" State  = " + objCompany.State);
            Console.WriteLine(" City  = " + objCompany.Zipcode);

            Console.WriteLine(" Phone  = " + objCompany.PhoneNumber);


            Console.WriteLine();

            Console.WriteLine("{0}\nManager Section \n{0}", line);

            int counter = 0;
            foreach (var objManager in objCompany.Managers)
            {
                Console.WriteLine("{0}\n Manager #{1} \n{0}", line, ++counter);

                Console.WriteLine("Sponsor SponsorManagerID is = " + objManager.ManagerId);

                Console.WriteLine("Sponsor Firstname is = " + objManager.FirstName);
                Console.WriteLine("Sponsor Lastname is = " + objManager.LastName);
                Console.WriteLine("Sponsor Title is = " + objManager.Title);
                Console.WriteLine("Sponsor Department is = " + objManager.Department);
                Console.WriteLine("Sponsor Organization is =" + objManager.Organization);
                Console.WriteLine("Sponsor Address is = " + objManager.Address);
                Console.WriteLine("Sponsor City is = " + objManager.City);
                Console.WriteLine("Sponsor State is = " + objManager.State);
                Console.WriteLine("Sponsor ZipCode is = " + objManager.Zipcode);
                Console.WriteLine("Sponsor WorkPhone is =" + objManager.PhoneWork);
                Console.WriteLine("Sponsor CellPhone is = " + objManager.PhoneCell);
                Console.WriteLine("Sponsor Email is = " + objManager.Email);

                Console.WriteLine();

                Console.WriteLine("{0}\nManager #{1} Position \n{0}", line, counter);

                int ctr = 0;
                foreach (var objPosition in objManager.Positions)
                {
                    Console.WriteLine("{0}\n Position #{2} for  Manager #{1} \n{0}", line, counter, ++ctr);
                    Console.WriteLine("InternshipPositionID is = " + objPosition.PositionId);


                    Console.WriteLine("Intership PositionType is = " + objPosition.PositionType);
                    Console.WriteLine("Intership PositionTitle is = " + objPosition.Title);
                    Console.WriteLine("Intership Description is = " + objPosition.Duties);
                    Console.WriteLine("Intership SkillSet is = " + objPosition.Skills);
                    Console.WriteLine("Intership WorkHours is = " + objPosition.WorkHours);
                    Console.WriteLine("Intership NumWorkDays is = " + objPosition.WorkDays);

                }
            }



        }


        public static void StudentCollectionTest()
        {


            StudentCollection objStudents = StudentCollection.Load();


            string line = "--------------------------------------------";


            foreach (var objStudent2 in objStudents)
            {

                Console.WriteLine();

                Console.WriteLine("{0}\nStudent Properties\n{0}", line);

                Console.WriteLine("Student2 StudentId = " + objStudent2.StudentID);
                Console.WriteLine("Student2 First Name = " + objStudent2.FirstName);
                Console.WriteLine("Student2 Last Name = " + objStudent2.LastName);

                Console.WriteLine("Student2 Last 4 digit of SSNumber = " + objStudent2.Last4SSN);
                Console.WriteLine("Student2 Number & Address = " + objStudent2.Address);
                Console.WriteLine("Student2 City = " + objStudent2.City);

                Console.WriteLine("Student2 State = " + objStudent2.State);
                Console.WriteLine("Student2 Zipcode = " + objStudent2.Zipcode);
                Console.WriteLine("Student2 Day Phone = " + objStudent2.PhoneDay);

                Console.WriteLine("Student2 Evening Phone = " + objStudent2.PhoneEvening);
                Console.WriteLine("Student2 Cell Phone = " + objStudent2.PhoneCell);
                Console.WriteLine("Student2 Email = " + objStudent2.Email);

                // Console.WriteLine("Student2 Semester Attending = " + objStudent2.Semester);
                Console.WriteLine("Student2 Graduation Date= " + objStudent2.GraduationDate);
                Console.WriteLine("Student2 GPA = " + objStudent2.GPA);

                Console.WriteLine();

                Console.WriteLine("{0}\nEmployer Properties\n{0}", line);

                Console.WriteLine();
                Console.WriteLine("Employer ID = " + objStudent2.Employer.EmployerId);
                Console.WriteLine("Employer Title is = " + objStudent2.Employer.Title);

                Console.WriteLine("Employer CompanyName is = " + objStudent2.Employer.CompanyName);
                Console.WriteLine("Employer Department is = " + objStudent2.Employer.Department);
                Console.WriteLine("Employer Manager is = " + objStudent2.Employer.SupervisorName);

                Console.WriteLine("Employer Address is = " + objStudent2.Employer.Address);
                Console.WriteLine("Employer City is = " + objStudent2.Employer.City);
                Console.WriteLine("Employer State is = " + objStudent2.Employer.State);

                Console.WriteLine("Employer ZipCode is = " + objStudent2.Employer.Zipcode);
                Console.WriteLine("Employer Phone is = " + objStudent2.Employer.PhoneNumber);
                Console.WriteLine("Employer Duties is = " + objStudent2.Employer.Duties);

                Console.WriteLine();

                Console.WriteLine("{0}\nInternship Requirement Properties\n{0}", line);


                Console.WriteLine("RequirementId= " + objStudent2.InternshipRequirement.RequirementId);
                // Console.WriteLine("Intership StudentID is = " + objStudent2.InternshipRequirement.StudentID);


                Console.WriteLine("DriverLicense is = " + objStudent2.InternshipRequirement.DriverLicense);
                Console.WriteLine("Type is = " + objStudent2.InternshipRequirement.InternshipType);

                Console.WriteLine("Owncar is = " + objStudent2.InternshipRequirement.Owncar);
                Console.WriteLine("Travelnj is = " + objStudent2.InternshipRequirement.TravelNJ);

                Console.WriteLine("TravelWestchesterNY is = " + objStudent2.InternshipRequirement.TravelWestchester);
                Console.WriteLine("ResidenceStatus is = " + objStudent2.InternshipRequirement.ResidenceStatus);
                Console.WriteLine("AnyLimitation is = " + objStudent2.InternshipRequirement.Limitation);

                Console.WriteLine("LimitationExplain is = " + objStudent2.InternshipRequirement.LimitationExplanation);
                Console.WriteLine("PrefernceRanks is null = " +
                                  (objStudent2.InternshipRequirement.PreferenceRanks == null));
                Console.WriteLine("ModulesTaken is null = " + (objStudent2.InternshipRequirement.ModulesTaken == null));


                Console.WriteLine();

                Console.WriteLine("{0}\nFile upload Properties\n{0}", line);

                Console.WriteLine("FileUploadId: {0} \nResume: {1} \nTranscript: {2}",
                                  objStudent2.InternshipRequirement.FileUpload.FileId,
                                  objStudent2.InternshipRequirement.FileUpload.Resume,
                                  objStudent2.InternshipRequirement.FileUpload.Transcript);

                Console.WriteLine();

                Console.WriteLine("{0}\nModule Taken Properties\n{0}", line);

                int counter = 0;
                foreach (var m in objStudent2.InternshipRequirement.ModulesTaken)
                {
                    Console.WriteLine("{0}\nModule #{1} \n{0}", line, ++counter);

                    Console.WriteLine("Module TakenID: {0}\nModule ID: {1}\nModuleName {2}",
                                      m.ModuleTakenId, m.Module.ModuleId, m.Module.Description);
                }

                counter = 0;


                Console.WriteLine();

                Console.WriteLine("{0}\nPreference Rank Section Properties\n{0}", line);
                foreach (var objRank1 in objStudent2.InternshipRequirement.PreferenceRanks)
                {
                    Console.WriteLine("{0}\nPrefernce #{1} \n{0}", line, ++counter);

                    Console.WriteLine("PefernceId: {2}\nPefernceDescription: {0}\nRank: {1}",
                                      objRank1.Preference.Description, objRank1.Rank, objRank1.Preference.PreferenceId);
                }
            }

        }
    }
}


        
