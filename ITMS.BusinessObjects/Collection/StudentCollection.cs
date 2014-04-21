using System;
using System.Collections;
using System.Data;
using ITMS.BusinessObjects.Scholar;
using ITMS.DataAccessLayer.Scholar;
using System.Collections.Generic;


namespace ITMS.BusinessObjects.Collection
{
    public class StudentCollection : BaseCollection<Student>
    {
        /// <summary>
        /// Loads all Students From the Database 
        /// </summary>
        /// <returns></returns>
        public static StudentCollection Load()
        {
            try
            {
                //Create a Student  Data Service Object 
                StudentDataService dataService = new StudentDataService();

                // Call the GETAll() method which returns a populated DataSet 
                DataSet ds = dataService.GetAll();
                StudentCollection obj = new StudentCollection();

                //Create Student Objects from DataSet and add the objects to the collection 
                obj.MapObjects(ds);

                // Return the populated collection 
                return obj;

            }
            
            catch (Exception ex)
            {
                throw new System.Exception(ex.Message);
            }
        }



        /// <summary>
        /// Adds students to the Dictionary
        /// </summary>
        /// <returns></returns>
        /*public void Add(string key, Student objStudent)
        {
            Dictionary<string, Student> diction = new Dictionary<string, Student>();

            try
            {
                diction.Add(key, objStudent);
            }

            catch (ArgumentNullException ex)
            {
                throw new System.ArgumentNullException("Invalid Key Error: " + ex.Message);
            }

            catch (ArgumentException ex)
            {
                throw new System.ArgumentException("Duplicate Key Error: " + ex.Message);
            }
            
            catch (Exception ex)
            {
                // throw new System.Exception(ex.Message);
                // throw new System.Exception("Add Method Error: " + ex.Message);
                throw new System.Exception("Exception: '" + ex.Message + "' occured while adding student data via 'public void Add(string key, Student objStudent)' method");
            }
        }*/



        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        /// 
        public void Add(string strStudentID, string strLast4, string strFName, string strLName, string strAddress, string strCity, string strState, string strZip,
            string strCell, string strDay, string strEvening, decimal decGPA, string strEMail)//, DateTime dt, InternshipRequirement intReq, Employer emp)
        {
            try
            {
                /*Student objItem = new Student(strStudentID, strLast4, strFName, strLName, strAddress, strCity, strState, strZip, strCell, strDay, strEvening,
                    decGPA, strEMail, dt, intReq, emp);*/

                Student objItem = new Student();

                objItem.StudentID = strStudentID;
                objItem.Last4SSN = strLast4;
                objItem.FirstName = strFName;
                objItem.LastName = strLName;
                objItem.Address = strAddress;
                objItem.City = strCity;
                objItem.State = strState;
                objItem.Zipcode = strZip;
                objItem.PhoneCell = strCell;
                objItem.PhoneDay = strDay;
                objItem.PhoneEvening = strEvening;
                objItem.GPA = decGPA;
                objItem.Email = strEMail;

                // Use Collection.Add(Key, Object)to add object. Object ID used as Key
                // MyBase.Dictionary.Add(objItem.CustomerID, objItem)

            }

            catch (ArgumentNullException ex)
            {
                throw new System.ArgumentNullException("Invalid Key Error: " + ex.Message);
            }

            catch (ArgumentException ex)
            {
                throw new System.ArgumentException("Duplicate Key Error: " + ex.Message);
            }

            catch (Exception ex)
            {
                throw new System.Exception("Exception: '" + ex.Message + "' occured while adding student data via 'public void Add(string key, Student objStudent)' method");
            }
        }



        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        ///
        public bool Edit(string strStudentID, string strLast4, string strFName, string strLName, string strAddress, string strCity, string strState, string strZip,
            string strCell, string strDay, string strEvening, decimal decGPA, string strEMail, DateTime dt, InternshipRequirement intReq, Employer emp)
        {
            try
            {
                Student objItem = new Student();

                // Get a Reference of pointer to the actual object inside the collection.
                // Use CType() function to convert object retrieved from list to clsCustomer

                if (objItem == null)
                {
                    return false;
                }

                else
                {
                    objItem.StudentID = strStudentID;
                    objItem.Last4SSN = strLast4;
                    objItem.FirstName = strFName;
                    objItem.LastName = strLName;
                    objItem.Address = strAddress;
                    objItem.City = strCity;
                    objItem.State = strState;
                    objItem.Zipcode = strZip;
                    objItem.PhoneCell = strCell;
                    objItem.PhoneDay = strDay;
                    objItem.PhoneEvening = strEvening;
                    objItem.GPA = decGPA;
                    objItem.Email = strEMail;
                    objItem.GraduationDate = dt;
                    objItem.InternshipRequirement = intReq;
                    objItem.Employer = emp;

                    return true;
                }
            }

            catch (ArgumentNullException ex)
            {
                throw new System.ArgumentNullException("Invalid Key Error: " + ex.Message);
            }

            catch (ArgumentException ex)
            {
                throw new System.ArgumentException("Duplicate Key Error: " + ex.Message);
            }

            catch (Exception ex)
            {
                throw new System.Exception("Exception: '" + ex.Message + "' occured while adding student data via 'public void Add(string key, Student objStudent)' method");
            }
        }


        /*
         * 
         Public Function Remove(ByVal key As String) As Boolean
        Try
            If MyBase.Dictionary.Contains(key) Then
                MyBase.Dictionary.Remove(key)

                Return True

            Else
                Return False
            End If

        Catch objX As ArgumentNullException
            Throw New System.ArgumentNullException("Invalid Key Error: " & objX.Message)

        Catch objE As Exception
            Throw New System.Exception("Remove Error: " & objE.Message)
        End Try

    End Function
         */
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        /// 





        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        /// 





        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        /// 



        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        /// 


    }
}
