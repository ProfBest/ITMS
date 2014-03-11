using System;
using System.Collections.ObjectModel;
using System.Data;
using ITMS.BusinessObjects.Collection;
using ITMS.DataAccessLayer.Sponsor;

namespace ITMS.BusinessObjects.Sponsor
{
    public class Company:  BaseObject
    {
        #region Private Fields

        private string _companyName;
        private string _phoneNumber;
        private string _address;
        private string _city;
        private string _state;
        private string _zipcode;
        private ManagerCollection _managers;
        private int _compnayId;

        #endregion 

        #region Properties
    
        /// <summary>
        /// Primary Key
        /// </summary>
        public int CompnayId
        {
            get { return _compnayId; }
            set { _compnayId = value; }
        }

        public ReadOnlyCollection<Manager> Managers
        {
            get { return _managers.AsReadOnly(); }
            //private set { _managers = value; }
        }

 

     
        public string CompanyName {
            get { return _companyName; }
            set { _companyName = value; }
        }
        public string PhoneNumber {
            get { return _phoneNumber; }
            set { _phoneNumber = value; }
        }

        public string Address {
            get { return _address; }
            set { _address = value; }
        }
        
        public string City {
            get { return _city; }
            set { _city = value; }
        }
        
        public string State {
            get { return _state; }
            set { _state = value; }
        }
        
        public string Zipcode {
            get { return _zipcode; }
            set { _zipcode = value; }
        }


        #endregion

        #region Constructors

        public Company() {
            _compnayId = -1;
            _companyName = string.Empty;
            _phoneNumber = string.Empty;
            _address = string.Empty;
            _city = string.Empty;
            _zipcode = string.Empty;

            _managers = new ManagerCollection();
        }

        public Company(string companyName, string address, string city, string state, string zipcode, string phoneNumber) {
            this._compnayId = -1;
            this.CompanyName = companyName;
            this.PhoneNumber = phoneNumber;
            this.Address = address;
            this.City = city;
            this.State = state;
            this.Zipcode = zipcode;
            _managers = new ManagerCollection();

        }

         //public Company(int companyId,string companyName, string phoneNumber, string street, string city,
         //   string state, string zipcode, ManagerCollection managers) 
         //    : this(companyName,phoneNumber,street,city,state,zipcode) {
         //    this._managers = managers;
         //    this.CompnayId = companyId;
         //    }
        #endregion 

        #region Data Access Methods
         
         public void Insert() 
         {
             try 
             {
                 CompanyDataService dataService = new CompanyDataService();

                 dataService.Insert(ref _compnayId, _companyName,_phoneNumber,
                 _address,_city,_state,_zipcode);

             } catch {
                 throw;
             }
         }

         public void AddManager(Manager manager) {
             try
             {
                manager.Insert(_compnayId);
                _managers.Add(manager);
             } catch
             {
                 
                 throw;
             }

         }

         public static Company Load(int companyId)
         {
             try
             {
                 CompanyDataService dataService = new CompanyDataService();

                 DataSet ds = dataService.Load(companyId);

                 Company obj = new Company();

                 return obj.MapData(ds) ? obj : null;


             } catch 
             {
                 
                 throw;
             }
         }
        
         #endregion

        #region Overrides of BaseObject

        public override bool MapData(DataRow row)
        {
            try
            {
                int companyid = GetInt(row, "CompanyId");
                this.CompnayId = companyid;
                this.CompanyName = GetString(row, "CompanyName");
                this.Address = GetString(row, "Address");
                this.City = GetString(row, "City");
                this.State = GetString(row, "State");
                this.Zipcode = GetString(row, "ZipCode");
                this.PhoneNumber = GetString(row, "PhoneNumber");
                this._managers = ManagerCollection.Load(companyid);
                return true;
            } catch (Exception)
            {
                
                throw;
            }
        }

        #endregion
    }
}
