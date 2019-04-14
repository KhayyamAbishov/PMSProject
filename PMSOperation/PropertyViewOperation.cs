
using PMSData.DbObjects;
using PMSOperation.Models;
using System.Linq;
using System.Collections.Generic;
using System.Net;
using System.ComponentModel;

namespace PMSOperation
{

    public class PropertyViewOperation
    {
        public List<PropertyViewModel> GetProperties(PropertyStatusClassifier? propertyStatus, string userId)
        {
            List<PropertyViewModel> result = null;
            using (PMSContext db = new PMSContext())
            {
                result = db.PropertyDetailsView.Where(x => (!propertyStatus.HasValue || x.SellingCondition == (int)propertyStatus.Value)
                                                            && (string.IsNullOrEmpty(userId) || x.UserId == userId))
                    .Select(x => new PropertyViewModel
                    {
                        PropertyId = x.PropertyId,
                        FloorNumber = x.FloorNumber,
                        TotalArea = x.TotalArea,
                        Price = x.Price,
                        Garage = x.Garage,
                        Bathroom = x.Bathroom,
                        PropertyStatus = (PropertyStatusClassifier)x.SellingCondition,
                        PropertyDescription = x.PropertyDescription,
                        PropertyType = (PropertyTypeClassifier)x.TypeId,
                        LandArea = x.LandArea,
                        FlatFloor = x.FlatFloor,
                        RoomNumber = x.RoomNumber,
                        UserId = x.UserId,
                        PhoneNumber = x.PhoneNumber,
                        UserImageUrl = x.ImageUrl,
                        Firstname = x.FirstName,
                        LastName = x.LastName,
                        Email = x.Email,
                        ApartmentType = (ApartmentTypeClassifier)x.ApartmentType,
                        City = x.City,
                        District = x.District,
                        Metro = x.Metro,
                        AddDate = x.AddDate,
                        Photo = x.Photo,
                        Feature = x.Feature
                    }).ToList().OrderByDescending(x => x.AddDate).ToList();
                //result = db.PropertyDetailsView.Where(x => (!propertyStatus.HasValue || x.SellingCondition == (int)propertyStatus.Value)
                //                                            && (!string.IsNullOrEmpty(userId) || x.UserId == userId))
                //    .Select(x => new PropertyViewModel
                //    {
                //        PropertyId = x.PropertyId,
                //        FloorNumber = x.FloorNumber,
                //        TotalArea = x.TotalArea,
                //        Price = x.Price,
                //        Garage = x.Garage,
                //        Bathroom = x.Bathroom,
                //        PropertyStatus = (PropertyStatusClassifier)x.SellingCondition,
                //        PropertyDescription = x.PropertyDescription,
                //        PropertyType = (PropertyTypeClassifier)x.TypeId,
                //        LandArea = x.LandArea,
                //        FlatFloor = x.FlatFloor,
                //        RoomNumber = x.RoomNumber,
                //        UserId = x.UserId,
                //        ApartmentType = (ApartmentTypeClassifier)x.ApartmentType,
                //        City = x.City,
                //        District = x.District,
                //        Metro = x.Metro,
                //        AddDate = x.AddDate,
                //        Photo = x.Photo,
                //        Feature = x.Feature
                //    }).ToList().OrderByDescending(x => x.AddDate).ToList();
            }

            return result;
        }
        public PropertyViewModel GetProperty(int? id)
        {
            PropertyViewModel result = null;

            using (PMSContext db = new PMSContext())
            {
                result = db.PropertyDetailsView.Where(x => x.PropertyId == id).Select(x =>
                  new PropertyViewModel
                  {
                      PropertyId = x.PropertyId,
                      FloorNumber = x.FloorNumber,
                      TotalArea = x.TotalArea,
                      Price = x.Price,
                      Garage = x.Garage,
                      Bathroom = x.Bathroom,
                      PropertyStatus = (PropertyStatusClassifier)x.SellingCondition,
                      PropertyDescription = x.PropertyDescription,
                      PropertyType = (PropertyTypeClassifier)x.TypeId,
                      LandArea = x.LandArea,
                      FlatFloor = x.FlatFloor,
                      RoomNumber = x.RoomNumber,
                      UserId = x.UserId,
                      PhoneNumber = x.PhoneNumber,
                      UserImageUrl = x.ImageUrl,
                      Firstname = x.FirstName,
                      LastName = x.LastName,
                      Email = x.Email,
                      ApartmentType = (ApartmentTypeClassifier)x.ApartmentType,
                      City = x.City,
                      District = x.District,
                      Metro = x.Metro,
                      AddDate = x.AddDate,
                      Photo = x.Photo,
                      Feature = x.Feature
                  }).FirstOrDefault();
            }
            return result;
        }

        public List<PropertyViewModel> GetProperty(PropertyTypeClassifier type, int propertyId)
        {
            List<PropertyViewModel> result = null;

            using (PMSContext db = new PMSContext())
            {
                result = db.PropertyDetailsView.Where(x => x.TypeId == (int)type && x.PropertyId != propertyId).Select(x =>
                  new PropertyViewModel
                  {
                      PropertyId = x.PropertyId,
                      FloorNumber = x.FloorNumber,
                      TotalArea = x.TotalArea,
                      Price = x.Price,
                      Garage = x.Garage,
                      Bathroom = x.Bathroom,
                      PropertyStatus = (PropertyStatusClassifier)x.SellingCondition,
                      PropertyDescription = x.PropertyDescription,
                      PropertyType = (PropertyTypeClassifier)x.TypeId,
                      LandArea = x.LandArea,
                      FlatFloor = x.FlatFloor,
                      RoomNumber = x.RoomNumber,
                      UserId = x.UserId,
                      PhoneNumber = x.PhoneNumber,
                      UserImageUrl = x.ImageUrl,
                      Firstname = x.FirstName,
                      LastName = x.LastName,
                      Email = x.Email,
                      ApartmentType = (ApartmentTypeClassifier)x.ApartmentType,
                      City = x.City,
                      District = x.District,
                      Metro = x.Metro,
                      AddDate = x.AddDate,
                      Photo = x.Photo,
                      Feature = x.Feature
                  }).ToList().OrderByDescending(x => x.AddDate).Take(7).ToList();
            }
            return result;
        }


        public ApartmentModel GetPropertyApartment(int id)
        {
            ApartmentModel model = new ApartmentModel();

            using (PMSContext db = new PMSContext())
            {
                var dbmodel = db.Properties.FirstOrDefault(x => x.PropertyId == id);

                model.PropertyType = (PropertyTypeClassifier)dbmodel.TypeId;
                model.PropertyStatus = (PropertyStatusClassifier)dbmodel.SellingCondition;
                model.PropertyId = dbmodel.PropertyId;
                model.Price = dbmodel.Price;

                //addresss
                model.PropertyDescription = dbmodel.PropertyDescription;
                var addressModel = db.PropertyAddresses.FirstOrDefault(x => x.PropertyAddressId == dbmodel.PropertyAddressId);
                model.City = addressModel.CityId;
                model.District = addressModel.DistrictId;
                model.Metro = addressModel.MetroId;
                model.AddressDescription = addressModel.Description;

                //photo
                model.Photos = new List<PhotoModel>();
                foreach (var d in db.Photos.Where(x => x.PropertyId == dbmodel.PropertyId))
                {
                    model.Photos.Add(new PhotoModel { PhotoPath = d.PhotoPath });
                }

                //apart
                model.ApartmentType = (ApartmentTypeClassifier)dbmodel.ApartmentType;
                model.FloorNumberApartment = (int)dbmodel.FloorNumber;
                model.FlatFloorApartment = (int)dbmodel.FlatFloor;
                model.TotalAreaApartment = dbmodel.TotalArea;
                model.BathroomApartment = (int)dbmodel.Bathroom;
                model.RoomNumberApartment = (int)dbmodel.RoomNumber;
                model.HasImage = true;

                //feature
                var ft = db.PropertyFeatures.Where(x => x.PropertyId == dbmodel.PropertyId);

                foreach (var f in ft)
                {
                    var fea = db.Features.FirstOrDefault(x => x.FeatureId == f.FeatureId);
                    if (fea.FeatureTitle == "Credit")
                    {
                        model.CreditApartment = true;
                    }
                    if (fea.FeatureTitle == "HasDocument")
                    {
                        model.HasDocumentApartment = true;
                    }
                    if (fea.FeatureTitle == "Repairing")
                    {
                        model.RepairingApartment = true;
                    }
                    if (fea.FeatureTitle == "Gas")
                    {
                        model.GasApartment = true;
                    }
                    if (fea.FeatureTitle == "Water")
                    {
                        model.WaterApartment = true;
                    }
                    if (fea.FeatureTitle == "Electric")
                    {
                        model.ElectricApartment = true;
                    }
                    if (fea.FeatureTitle == "Telephone")
                    {
                        model.TelephoneApartment = true;
                    }
                    if (fea.FeatureTitle == "CabelTV")
                    {
                        model.CabelTVApartment = true;
                    }
                    if (fea.FeatureTitle == "Lift")
                    {
                        model.LiftApartment = true;
                    }

                    if (fea.FeatureTitle == "CentralHeatingSystem")
                    {
                        model.CentralHeatingSystemApartment = true;
                    }


                    if (fea.FeatureTitle == "Internet")
                    {
                        model.InternetApartment = true;

                    }

                    if (fea.FeatureTitle == "Conditioner")
                    {
                        model.ConditionerApartment = true;

                    }

                    if (fea.FeatureTitle == "KitchenFurniture")
                    {
                        model.KitchenFurnitureApartment = true;
                    }
                    if (fea.FeatureTitle == "Handy")
                    {
                        model.HandyApartment = true;

                    }
                    if (fea.FeatureTitle == "CombySystem")
                    {
                        model.CombySystemApartment = true;
                    }
                }
            }

            Repository rep = new Repository();
            model.DistrictList = rep.GetDistricts(model.City);
            model.MetroList = rep.GetMetroes(model.City);

            return model;
        }


        public HouseModel GetPropertyHouse(int id)
        {
            HouseModel model = new HouseModel();

            using (PMSContext db = new PMSContext())
            {
                var dbmodel = db.Properties.FirstOrDefault(x => x.PropertyId == id);

                model.PropertyType = (PropertyTypeClassifier)dbmodel.TypeId;
                model.PropertyStatus = (PropertyStatusClassifier)dbmodel.SellingCondition;
                model.PropertyId = dbmodel.PropertyId;
                model.Price = dbmodel.Price;

                //addresss
                model.PropertyDescription = dbmodel.PropertyDescription;
                var addressModel = db.PropertyAddresses.FirstOrDefault(x => x.PropertyAddressId == dbmodel.PropertyAddressId);
                model.City = addressModel.CityId;
                model.District = addressModel.DistrictId;
                model.Metro = addressModel.MetroId;
                model.AddressDescription = addressModel.Description;

                //photo
                model.Photos = new List<PhotoModel>();
                foreach (var d in db.Photos.Where(x => x.PropertyId == dbmodel.PropertyId))
                {
                    model.Photos.Add(new PhotoModel { PhotoPath = d.PhotoPath });
                }

                //apart
                model.FloorNumberHouse = (int)dbmodel.FloorNumber;
                model.TotalAreaHouse = dbmodel.TotalArea;
                model.BathroomHouse = (int)dbmodel.Bathroom;
                model.RoomNumberHouse = (int)dbmodel.RoomNumber;
                model.LandAreaHouse = dbmodel.LandArea;
                model.GarageHouse = (int)dbmodel.Garage;
                model.HasImage = true;

                //feature
                var ft = db.PropertyFeatures.Where(x => x.PropertyId == dbmodel.PropertyId);

                foreach (var f in ft)
                {
                    var fea = db.Features.FirstOrDefault(x => x.FeatureId == f.FeatureId);
                    if (fea.FeatureTitle == "Credit")
                    {
                        model.CreditHouse = true;
                    }
                    if (fea.FeatureTitle == "HasDocument")
                    {
                        model.HasDcoumentHouse = true;
                    }
                    if (fea.FeatureTitle == "Repairing")
                    {
                        model.RepairingHouse = true;
                    }
                    if (fea.FeatureTitle == "Gas")
                    {
                        model.GasHouse = true;
                    }
                    if (fea.FeatureTitle == "Water")
                    {
                        model.WaterHouse = true;
                    }
                    if (fea.FeatureTitle == "Electric")
                    {
                        model.ElectricHouse = true;
                    }
                    if (fea.FeatureTitle == "Telephone")
                    {
                        model.TelephoneHouse = true;
                    }
                    if (fea.FeatureTitle == "CabelTV")
                    {
                        model.CabelTVHouse = true;
                    }
                    if (fea.FeatureTitle == "Internet")
                    {
                        model.InternetHouse = true;

                    }

                    if (fea.FeatureTitle == "Conditioner")
                    {
                        model.ConditionerHouse = true;

                    }

                    if (fea.FeatureTitle == "KitchenFurniture")
                    {
                        model.KitchenFurnitureHouse = true;
                    }
                    if (fea.FeatureTitle == "Handy")
                    {
                        model.HandyHouse = true;

                    }
                    if (fea.FeatureTitle == "CombySystem")
                    {
                        model.CombySystemHouse = true;
                    }
                }
            }

            Repository rep = new Repository();
            model.DistrictList = rep.GetDistricts(model.City);
            model.MetroList = rep.GetMetroes(model.City);

            return model;
        }

        public CommercialModel GetPropertyCommercial(int id)
        {
            CommercialModel model = new CommercialModel();

            using (PMSContext db = new PMSContext())
            {
                var dbmodel = db.Properties.FirstOrDefault(x => x.PropertyId == id);

                model.PropertyType = (PropertyTypeClassifier)dbmodel.TypeId;
                model.PropertyStatus = (PropertyStatusClassifier)dbmodel.SellingCondition;
                model.PropertyId = dbmodel.PropertyId;
                model.Price = dbmodel.Price;

                //addresss
                model.PropertyDescription = dbmodel.PropertyDescription;
                var addressModel = db.PropertyAddresses.FirstOrDefault(x => x.PropertyAddressId == dbmodel.PropertyAddressId);
                model.City = addressModel.CityId;
                model.District = addressModel.DistrictId;
                model.Metro = addressModel.MetroId;
                model.AddressDescription = addressModel.Description;

                //photo
                model.Photos = new List<PhotoModel>();
                foreach (var d in db.Photos.Where(x => x.PropertyId == dbmodel.PropertyId))
                {
                    model.Photos.Add(new PhotoModel { PhotoPath = d.PhotoPath });
                }

                //apart
                model.FloorNumberCommercial = (int)dbmodel.FloorNumber;
                model.TotalAreaCommercial = dbmodel.TotalArea;
                model.RoomNumberCommercial = (int)dbmodel.RoomNumber;
                model.HasImage = true;
                //feature
                var ft = db.PropertyFeatures.Where(x => x.PropertyId == dbmodel.PropertyId);

                foreach (var f in ft)
                {
                    var fea = db.Features.FirstOrDefault(x => x.FeatureId == f.FeatureId);
                    if (fea.FeatureTitle == "Credit")
                    {
                        model.CreditCommercial = true;
                    }
                    if (fea.FeatureTitle == "HasDocument")
                    {
                        model.HasDocumentCommercial = true;
                    }
                    if (fea.FeatureTitle == "Repairing")
                    {
                        model.RepairingCommercial = true;
                    }
                    if (fea.FeatureTitle == "Gas")
                    {
                        model.GasCommercial = true;
                    }
                    if (fea.FeatureTitle == "Water")
                    {
                        model.WaterCommercial = true;
                    }
                    if (fea.FeatureTitle == "Electric")
                    {
                        model.ElectricCommercial = true;
                    }
                    if (fea.FeatureTitle == "Telephone")
                    {
                        model.TelephoneCommercial = true;
                    }
                    if (fea.FeatureTitle == "CabelTV")
                    {
                        model.CabelTVCommercial = true;
                    }
                    if (fea.FeatureTitle == "Internet")
                    {
                        model.InternetCommercial = true;

                    }

                    if (fea.FeatureTitle == "Conditioner")
                    {
                        model.ConditionerCommercial = true;

                    }

                    if (fea.FeatureTitle == "Handy")
                    {
                        model.HandyCommercial = true;

                    }
                    if (fea.FeatureTitle == "CombySystem")
                    {
                        model.CombySystemCommercial= true;
                    }
                }
            }

            Repository rep = new Repository();
            model.DistrictList = rep.GetDistricts(model.City);
            model.MetroList = rep.GetMetroes(model.City);

            return model;
        }


        public LandModel GetPropertyLand(int id)
        {
            LandModel model = new LandModel();

            using (PMSContext db = new PMSContext())
            {
                var dbmodel = db.Properties.FirstOrDefault(x => x.PropertyId == id);

                model.PropertyType = (PropertyTypeClassifier)dbmodel.TypeId;
                model.PropertyStatus = (PropertyStatusClassifier)dbmodel.SellingCondition;
                model.PropertyId = dbmodel.PropertyId;
                model.Price = dbmodel.Price;

                //addresss
                model.PropertyDescription = dbmodel.PropertyDescription;
                var addressModel = db.PropertyAddresses.FirstOrDefault(x => x.PropertyAddressId == dbmodel.PropertyAddressId);
                model.City = addressModel.CityId;
                model.District = addressModel.DistrictId;
                model.Metro = addressModel.MetroId;
                model.AddressDescription = addressModel.Description;

                //photo
                model.Photos = new List<PhotoModel>();
                foreach (var d in db.Photos.Where(x => x.PropertyId == dbmodel.PropertyId))
                {
                    model.Photos.Add(new PhotoModel { PhotoPath = d.PhotoPath });
                }

                //apart
                model.LandAreaLand = dbmodel.LandArea;
                model.HasImage = true;

                //feature
                var ft = db.PropertyFeatures.Where(x => x.PropertyId == dbmodel.PropertyId);

                foreach (var f in ft)
                {
                    var fea = db.Features.FirstOrDefault(x => x.FeatureId == f.FeatureId);
                    if (fea.FeatureTitle == "Credit")
                    {
                        model.CreditLand = true;
                    }
                    if (fea.FeatureTitle == "HasDocument")
                    {
                        model.HasDocumentLand = true;
                    }

                    if(fea.FeatureTitle == "Fence")
                    {
                        model.FenceLand = true;
                    }
                   
                    if (fea.FeatureTitle == "Gas")
                    {
                        model.GasLand = true;
                    }
                    if (fea.FeatureTitle == "Water")
                    {
                        model.WaterLand = true;
                    }
                    if (fea.FeatureTitle == "Electric")
                    {
                        model.ElectricLand = true;
                    }
                }
            }

            Repository rep = new Repository();
            model.DistrictList = rep.GetDistricts(model.City);
            model.MetroList = rep.GetMetroes(model.City);

            return model;
        }



        public List<PropertyViewModel> GetSearchedProperties(SearchModel filter)
        {
            List<PropertyViewModel> result = null;
            using (PMSContext db = new PMSContext())
            {
                result = db.PropertyDetailsView.Where(x => (!filter.CityId.HasValue || x.CityId == (int)filter.CityId.Value) &&
                                                            (!filter.DistrictId.HasValue || x.DistrictId == (int)filter.DistrictId.Value)&&
                                                            (!filter.MetroId.HasValue || x.MetroId == (int)filter.MetroId.Value) &&
                                                            (!filter.PropertyStatus.HasValue || x.SellingCondition == (int)filter.PropertyStatus.Value) &&
                                                            (!filter.PropertyType.HasValue || x.TypeId == (int)filter.PropertyType.Value) &&
                                                            (!filter.PriceMin.HasValue || !filter.PriceMax.HasValue || (x.Price >= filter.PriceMin && x.Price <= filter.PriceMax)) &&
                                                            (!filter.TotalAreaMin.HasValue || !filter.TotalAreaMax.HasValue || (x.TotalArea >= filter.TotalAreaMin && x.Price <= filter.TotalAreaMax)) &&
                                                            (!filter.LandAreaMin.HasValue || !filter.LandAreaMax.HasValue || (x.LandArea >= filter.LandAreaMin && x.Price <= filter.LandAreaMax)) &&
                                                            (!filter.FloorNumberMin.HasValue || !filter.FloorNumberMax.HasValue || (x.FloorNumber >= filter.FloorNumberMin && x.Price <= filter.FloorNumberMax)) &&
                                                            (!filter.FlatFloorMin.HasValue || !filter.FlatFloorMax.HasValue || (x.FlatFloor >= filter.FlatFloorMin && x.Price <= filter.FlatFloorMax)) &&
                                                            (!filter.RoomNumberMin.HasValue || !filter.RoomNumberMax.HasValue || (x.RoomNumber >= filter.RoomNumberMin && x.Price <= filter.RoomNumberMax))
                                                            )
                    .Select(x => new PropertyViewModel
                    {
                        PropertyId = x.PropertyId,
                        FloorNumber = x.FloorNumber,
                        TotalArea = x.TotalArea,
                        Price = x.Price,
                        Garage = x.Garage,
                        Bathroom = x.Bathroom,
                        PropertyStatus = (PropertyStatusClassifier)x.SellingCondition,
                        PropertyDescription = x.PropertyDescription,
                        PropertyType = (PropertyTypeClassifier)x.TypeId,
                        LandArea = x.LandArea,
                        FlatFloor = x.FlatFloor,
                        RoomNumber = x.RoomNumber,
                        UserId = x.UserId,
                        PhoneNumber = x.PhoneNumber,
                        UserImageUrl = x.ImageUrl,
                        Firstname = x.FirstName,
                        LastName = x.LastName,
                        Email = x.Email,
                        ApartmentType = (ApartmentTypeClassifier)x.ApartmentType,
                        City = x.City,
                        District = x.District,
                        Metro = x.Metro,
                        AddDate = x.AddDate,
                        Photo = x.Photo,
                        Feature = x.Feature
                    }).ToList().OrderByDescending(x => x.AddDate).ToList();
                //result = db.PropertyDetailsView.Where(x => (!propertyStatus.HasValue || x.SellingCondition == (int)propertyStatus.Value)
                //                                            && (!string.IsNullOrEmpty(userId) || x.UserId == userId))
                //    .Select(x => new PropertyViewModel
                //    {
                //        PropertyId = x.PropertyId,
                //        FloorNumber = x.FloorNumber,
                //        TotalArea = x.TotalArea,
                //        Price = x.Price,
                //        Garage = x.Garage,
                //        Bathroom = x.Bathroom,
                //        PropertyStatus = (PropertyStatusClassifier)x.SellingCondition,
                //        PropertyDescription = x.PropertyDescription,
                //        PropertyType = (PropertyTypeClassifier)x.TypeId,
                //        LandArea = x.LandArea,
                //        FlatFloor = x.FlatFloor,
                //        RoomNumber = x.RoomNumber,
                //        UserId = x.UserId,
                //        ApartmentType = (ApartmentTypeClassifier)x.ApartmentType,
                //        City = x.City,
                //        District = x.District,
                //        Metro = x.Metro,
                //        AddDate = x.AddDate,
                //        Photo = x.Photo,
                //        Feature = x.Feature
                //    }).ToList().OrderByDescending(x => x.AddDate).ToList();
            }

            return result;
        }
    }
}

