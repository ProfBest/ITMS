namespace ITMS.BusinessObjects.Abstract
{
    public interface IContactInformation
    {
        string FirstName { get; set; }

        string LastName { get; set; }

        string Email { get; set; }

        string PhoneCell { get; set; }
    }
}
