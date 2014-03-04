using System;
using System.Collections.ObjectModel;
using System.Data;
using ITMS.BusinessObjects.Collection;
using ITMS.DataAccessLayer.Sponsor;



namespace ITMS.BusinessObjects.Sponsor
{
    public class Manager : BaseObject
    {
        #region Private Fields
        
        private string _firstName;
        private string _lastName;
        private string _email;
        private string _phoneCell;
        private string _address;
        private string _city;
        private string _state;
        private string _zipcode;
        private int _managerId;
        private string _phoneWork;
        private PositionCollection _positions;
        private string _title;
        private string _organization;
        private string _department;
      

        #endregion 
        
        #region Properties
      
        /// <summary>
        /// Primary Key 
        /// </summary>
        public int ManagerId {
            get { return _managerId; }
            set { _managerId = value; }
        }

        /// <summary>
        /// Work Phone Number
        /// </summary>
        public string PhoneWork {
            get { return _phoneWork; }
            set { _phoneWork = value; }
        }

        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }

        public string Department
        {
            get { return _department; }
            set { _department = value; }
        }

        public string Organization
        {
            get { return _organization; }
            set { _organization = value; }
        }

       

        /// <summary>
        /// A list of Position for Manager
        /// </summary>
        public ReadOnlyCollection<Position> Positions
        {
            get { return _positions.AsReadOnly(); }
           // set { _positions = value; }
        }

        #endregion

        
        public string FirstName {
            get { return _firstName; }
            set { _firstName = value; }
        }
        public string LastName {
            get { return _lastName; }
            set { _lastName = value; }
        }
        public string Email {
            get { return _email; }
            set { _email = value; }
        }
        public string PhoneCell {
            get { return _phoneCell; }
            set { _phoneCell = value; }
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

    

        #region Constructors
        
        public Manager() {
            _managerId = -1;
            _firstName = string.Empty;
            _lastName = string.Empty;
            _email = string.Empty;
            _phoneCell = string.Empty;
            _address = string.Empty;
            _city = string.Empty;
            _state = string.Empty;
            _zipcode = string.Empty;
            _phoneWork = string.Empty;

            _positions = new PositionCollection();
        }

        public Manager(string firstname, string lastname, string email, string cellphone, string workNumber, string address, 
            string city, string state, string zipcode, string title, string organization, string department) 
        {
            this._managerId = -1;
            this.FirstName = firstname;
            this.LastName = lastname;
            this.Email = email;
            this.PhoneCell = cellphone;
            this.PhoneWork = workNumber;
            this.Address = address;
            this.City = city;
            this.State = state;
            this.Zipcode = zipcode;
            this.Organization = organization;
            this.Department = department;
       
            this.Title = title;
            this._positions = new PositionCollection();
            
        }


        public Manager(int managerId,string firstname, string lastname, string email, string cellphone, string workNumber, string address, 
            string city, string state, string zipcode, string title, string organization, string department ,PositionCollection positions)
            : this(firstname, lastname, email, cellphone, workNumber, address, city, state, zipcode, title, organization,department) {
            this.ManagerId = managerId;
            this._positions = positions;
        }
        
        #endregion

        #region DataAccess Methods

       
        public void Insert(int companyId)
        {
            try
            {
                ManagerDataService dataService = new ManagerDataService();

                dataService.Insert(ref _managerId, companyId, _firstName,
                    _lastName, _email,_phoneCell,_phoneWork,_address,_city,_state,_zipcode,_title
                    ,_organization,_department);

            } catch 
            {
                
                throw;
            }
        }

     

        public void AddPosition(Position position) {
            try 
            {
                position.Insert(_managerId);
                _positions.Add(position);
            } catch (Exception) {

                throw;
            }
        }


        public static Manager Load(int managerId) {
            try 
            {
                ManagerDataService dataService = new ManagerDataService();

                DataSet ds = dataService.Load(managerId);

                Manager obj = new Manager();

                return obj.MapData(ds) ? obj : null;

               
            } catch {

                throw;
            }
        }

        #endregion

        #region Overrides of BaseObject

        public override bool MapData(DataRow row)
        {
            try
            {
                int managerid = GetInt(row, "ManagerId");
                this.ManagerId = managerid;
                this.FirstName = GetString(row, "FirstName");
                this.LastName = GetString(row, "LastName");
                this.Email = GetString(row, "Email");
                this.PhoneCell = GetString(row, "PhoneCell");
                this.PhoneWork = GetString(row, "PhoneWork");
                this.Address = GetString(row, "Address");
                this.City = GetString(row, "City");
                this.State = GetString(row, "State");
                this.Zipcode = GetString(row, "Zipcode");
                this.Title = GetString(row, "Title");
                this.Organization = GetString(row, "Organization");
                this.Department = GetString(row, "Department");
                this._positions = PositionCollection.Load(managerid);
                
                return true;

            } catch 
            {
                throw;
            }
          


        }

        #endregion
    }
}
