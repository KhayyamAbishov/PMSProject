using System.Web.Optimization;

namespace PMSWeb.App_Start
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/Content/bundled-css").Include(
                    "~/Content/PMS.css",
                    "~/Content/assets/css/normalize.css",
                    "~/Content/assets/css/font-awesome.min.css",
                    "~/Content/assets/css/fontello.css",
                    "~/Content/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css",
                    "~/Content/assets/fonts/icon-7-stroke/css/helper.css",
                    "~/Content/assets/css/animate.css",
                    "~/Content/assets/css/bootstrap-select.min.css",
                    "~/Content/bootstrap/css/bootstrap.min.css",
                    "~/Content/assets/css/icheck.min_all.css",
                    "~/Content/assets/css/price-range.css",
                    "~/Content/assets/css/owl.carousel.css",
                    "~/Content/assets/css/owl.theme.css",
                    "~/Content/assets/css/owl.transitions.css",
                    "~/Content/assets/css/lightslider.min.css",
                    "~/Content/assets/css/wizard.css",
                    "~/Content/assets/css/style.css",
                    "~/Content/assets/css/responsive.css"
                ));


    //      <script src="~/Content/assets/js/modernizr-2.6.2.min.js"></script>
    //<script src="~/Content/assets/js/jquery-1.10.2.min.js"></script>
    //<script src="~/Content/bootstrap/js/bootstrap.min.js"></script>
    //<script src="~/Content/assets/js/bootstrap-select.min.js"></script>
    //<script src="~/Content/assets/js/bootstrap-hover-dropdown.js"></script>
    //<script src="~/Content/assets/js/easypiechart.min.js"></script>
    //<script src="~/Content/assets/js/jquery.easypiechart.min.js"></script>
    //<script src="~/Content/assets/js/owl.carousel.min.js"></script>
    //<script src="~/Content/assets/js/wow.js"></script>
    //<script src="~/Content/assets/js/icheck.min.js"></script>
    //<script src="~/Content/assets/js/price-range.js"></script>
    //<script src="~/Content/assets/js/main.js"></script>
    //<script src="~/Content/assets/js/lightslider.min.js"></script>
    //<script src="~/Content/assets/js/wizard.js"></script>
    //<script src="~/Content/assets/js/jquery.validate.min.js"></script>
    //<script src="~/Content/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                "~/Content/assets/js/modernizr-2.6.2.min.js",
                "~/Content/assets/js/jquery-1.10.2.min.js",
                "~/Content/bootstrap/js/bootstrap.min.js",
                "~/Content/assets/js/bootstrap-select.min.js",
                "~/Content/assets/js/bootstrap-hover-dropdown.js",
                "~/Content/assets/js/easypiechart.min.js",
                "~/Content/assets/js/jquery.easypiechart.min.js",
                "~/Content/assets/js/owl.carousel.min.js",
                "~/Content/assets/js/wow.js",
                "~/Content/assets/js/icheck.min.js",
                "~/Content/assets/js/price-range.js",
                "~/Content/assets/js/main.js",
                "~/Content/assets/js/lightslider.min.js",
                "~/Content/assets/js/wizard.js",
                "~/Content/assets/js/jquery.validate.min.js",
                "~/Content/assets/js/jquery.bootstrap.wizard.js",
                        //"~/Content/assets/js/-{version}.min.js",
                        "~/Content/assets/js/bootstrap-hover-dropdown.js"
                        
                        ));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                ));




        }
    }
}