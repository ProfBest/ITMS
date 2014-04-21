using System;
using System.Data;
using ITMS.DataAccessLayer.Scholar;


namespace ITMS.BusinessObjects.Scholar
{
    public class PreferenceRank :BaseObject
    {
        private int _rank;
        private PreferenceOption _preference;
        //private int _prefernceId;

        //public int PrefernceId {
        //    get { return _prefernceId; }
        //    set { _prefernceId = value; }
        //}
        
        public PreferenceOption Preference
        {
            get { return _preference; }
            set { _preference = value; }
        }

        public int Rank {
            get { return _rank; }
            set { 
                if(value > 5 || value < 1) {
                    throw new Exception("Rank Must be between 1 and 5");
                } else {
                    _rank = value; 
                }
                
            }
        }

        public PreferenceRank(PreferenceOption preference, int rank) {
            Preference = preference;
            Rank = rank;
        }


        public PreferenceRank() {
            Preference = null;
            _rank = -1;
        }



        //public void Insert(int requirementId) {
        //    try 
        //    {
        //        PreferenceRankDataService dataService = new PreferenceRankDataService();

        //        dataService.Insert(requirementId,_preference.PreferenceId,_rank);
        //    } catch  {
                
        //        throw;
        //    }
        //}

        /// <summary>
        /// Inserts a Prefecence Rank record to database 
        /// </summary>
        /// <param name="requirementId"></param>
        /// <param name="tnx"></param>
        public void Insert(int requirementId, IDbTransaction tnx)
        {
            try
            {
                PreferenceRankDataService dataService = new PreferenceRankDataService(tnx);
                dataService.Insert(requirementId, _preference.PreferenceId, _rank);
            }
            catch
            {

                throw;
            }
        }



        /// <summary>
        /// Updates a Prefecence Rank record to database 
        /// </summary>
        /// <param name="requirementId"></param>
        /// <param name="tnx"></param>
        public void Update(int requirementId, IDbTransaction tnx)
        {
            try
            {
                PreferenceRankDataService dataService = new PreferenceRankDataService(tnx);
                dataService.Update(requirementId, _preference.PreferenceId, _rank);
            }
            catch
            {

                throw;
            }
        }


        #region Overrides of BaseObject

        public override bool MapData(DataRow row)
        {
            try
            {
                PreferenceOption objPrefernce = new PreferenceOption();
                objPrefernce.MapData(row);

                this.Rank = GetInt(row, "Rank");
                this.Preference = objPrefernce;

                return true;
            } catch 
            {
                throw;
            }
           
           



        }

        #endregion
    }
}
