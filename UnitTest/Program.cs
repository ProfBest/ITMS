namespace UnitTest
{
    internal static class ClassTestModule
    {


        public static void Main()
        {
            ExcuteUnitTest();
            ExcuteIntergatedTest();
          

        }

        //************************************************
        //Code to UNIT Test Student Class

        static void ExcuteUnitTest() {
            UnitTest.StudentClassTest();
            UnitTest.InternShipRequirementsClassTest();
            UnitTest.PositionClassTest();
            UnitTest.EmployerClassTest();

            UnitTest.SponsorCompanyClassTest();
            UnitTest.SponsorManagerClassTest();

            UnitTest.ModuleClassTest();
            UnitTest.PreferenceOptionClassTest();
            UnitTest.FileUploadClassTest();
            UnitTest.PrefercenceRankClassTest();
        }

        static void ExcuteIntergatedTest()
        {
            var studentID = IntergratedTest.StudentInsert();
            IntergratedTest.StudentLoad(studentID);
            var companyID = IntergratedTest.SponsorCompanyInsert();
            IntergratedTest.SponsorCompanyLoad(companyID);
            IntergratedTest.StudentCollectionTest();
        }
    
    }
}

