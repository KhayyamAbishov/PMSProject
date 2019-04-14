﻿using System;
using System.Globalization;
using System.Web.Mvc;

namespace PMSWeb
{
    public class DecimalModelBinder: DefaultModelBinder
    {
        public override object BindModel(ControllerContext controllerContext, ModelBindingContext bindingContext)
        {
            var valueProviderResult = bindingContext.ValueProvider.GetValue(bindingContext.ModelName);

            if (valueProviderResult == null)
            {
                return base.BindModel(controllerContext, bindingContext);
            }

            var numberFormats = new[]
            {
                new NumberFormatInfo { NumberDecimalSeparator = "." },
                new NumberFormatInfo { NumberDecimalSeparator = "," }
            };

            foreach (var format in numberFormats)
            {
                decimal result;
                if (decimal.TryParse(
                        valueProviderResult.AttemptedValue,
                        NumberStyles.AllowDecimalPoint,
                        format,
                        out result))
                {
                    return result;
                }
            }

            return base.BindModel(controllerContext, bindingContext);
        }
    }
}