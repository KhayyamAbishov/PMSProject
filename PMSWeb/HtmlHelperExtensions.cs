using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Html;

namespace PMSWeb
{
    public static class HtmlHelperExtensions
    {
        /// summary
        /// Creates Dropdown List for specified list of objects
        /// /summary
        /// typeparam name="T"Type of object for which Dropdown list needs to be created/typeparam
        /// param name="htmlHelper"HtmlHelper class/param
        /// param name="name"Name of Dropdown List/param
        /// param name="itemList"List of class having data to be bound in Dropdown List/param
        /// param name="valueField"Property name of class whose value will be used as value of Dropdown List/param
        /// param name="textField"Property name of class whose value will be used as text of Dropdown List/param
        /// param name="value"Selected value of Dropdown List/param
        /// param name="optionLabel"Option Label of Dropdown List/param
        /// param name="cssClass"CSS Class to be applied on Dropdown List control/param
        /// returns/returns
        public static MvcHtmlString AutoCompleteFor<T>(this HtmlHelper htmlHelper,
            string name, List<T> itemList, string valueField, string textField, int? value,
            string optionLabel, string cssClass) where T : new()
        {
            StringBuilder sb = new StringBuilder();
            TagBuilder option;
            TagBuilder select = new TagBuilder("select");
            select.MergeAttribute("name", name, true);
            select.GenerateId(name);
            select.MergeAttribute("class", cssClass);
            select.MergeAttributes(htmlHelper.GetUnobtrusiveValidationAttributes(name));
            sb.Append(select.ToString(TagRenderMode.StartTag));
            if (!string.IsNullOrEmpty(optionLabel) && optionLabel != "null")
            {
                option = new TagBuilder("option");
                option.SetInnerText(optionLabel);
                option.MergeAttribute("Value", "0");
                if (value == 0)
                {
                    option.MergeAttribute("Selected", "true");
                }
                sb.Append(option.ToString(TagRenderMode.Normal));
            }
            foreach (T ddl in itemList)
            {
                Type type = ddl.GetType();
                option = new TagBuilder("option");
                option.SetInnerText(Convert.ToString(type.GetProperty(textField).GetValue(ddl, null)));
                option.MergeAttribute("Value", Convert.ToString(type.GetProperty(valueField).GetValue(ddl, null)));
                if (Convert.ToInt32(type.GetProperty(valueField).GetValue(ddl, null)) == value)
                {
                    option.MergeAttribute("Selected", "true");
                }
                sb.Append(option.ToString(TagRenderMode.Normal));
            }
            sb.Append(select.ToString(TagRenderMode.EndTag));
            return MvcHtmlString.Create(sb.ToString());
        }

        //https://jeremylindsayni.wordpress.com/2015/01/17/mvc-enhanced-dropdownlistfor-part-2/

        /// <summary>
        /// Returns a single-selection HTML &lt;select&gt; element for the expression <paramref name="name" />,
        /// using the specified list items.
        /// </summary>
        /// <typeparam name="TModel">The type of the model.</typeparam>
        /// <typeparam name="TListItemType">The type of the items in the list.</typeparam>
        /// <typeparam name="TItemId">The type of the item identifier.</typeparam>
        /// <typeparam name="TItemName">The type of the item name.</typeparam>
        /// <typeparam name="TSelectedValue">The type of the selected value expression result.</typeparam>
        /// <param name="htmlHelper">The HTML helper instance that this method extends.</param>
        /// <param name="formFieldName">Name of the form field.</param>
        /// <param name="items">The items to put in the  HTML &lt;select&gt; element.</param>
        /// <param name="optionValueProperty">The item identifier property.</param>
        /// <param name="optionInnerHTMLProperty">The item name property.</param>
        /// <param name="optionLabel">The text for a default empty item. Does not include such an item if argument is <c>null</c>.</param>
        /// <param name="htmlAttributes">An <see cref="object" /> that contains the HTML attributes for the &lt;select&gt; element. Alternatively, an
        /// <see cref="IDictionary{string, object}" /> instance containing the HTML attributes.</param>
        /// <returns>A new MvcHtmlString containing the &lt;select&gt; element.</returns>        public static MvcHtmlString AutoDropDownListFor<TModel, TListItemType, TItemId, TItemName, TSelectedValue>(
            this HtmlHelper<TModel> htmlHelper,
            Expression<Func<TModel, TSelectedValue>> formFieldName,
            Expression<Func<TModel, List<TListItemType>>> items,
            Expression<Func<TListItemType, TItemId>> optionValueProperty,
            Expression<Func<TListItemType, TItemName>> optionInnerHTMLProperty,
             string optionLabel = null,
             object htmlAttributes = null)
        {
            var formField = ExpressionHelper.GetExpressionText(formFieldName);
            var itemIdPropertyName = ExpressionHelper.GetExpressionText(optionValueProperty);
            var itemNamePropertyName = ExpressionHelper.GetExpressionText(optionInnerHTMLProperty);

            var listItemsModel = GetModelFromExpressionAndViewData(items, htmlHelper.ViewData) as List<TListItemType>;

            // if the list is null, initialize to an empty list so we display something
            if (listItemsModel == null)
            {
                listItemsModel = new List<TListItemType>();
            }

            var selectedValueObject = GetModelFromExpressionAndViewData(formFieldName, htmlHelper.ViewData);

            var selectList = new SelectList(listItemsModel, itemIdPropertyName, itemNamePropertyName, selectedValueObject);

            return SelectExtensions.DropDownList(htmlHelper: htmlHelper, name: formField, selectList: selectList, optionLabel: optionLabel, htmlAttributes: htmlAttributes);
        }

        /// <summary>
        /// Gets the model from expression and view data.
        /// </summary>
        /// <typeparam name="TModel">The type of the model.</typeparam>
        /// <typeparam name="TSelectedValue">The type of the selected value expression result.</typeparam>
        /// <param name="expressionThatDefinesTheModel">The expression that defines the model.</param>
        /// <param name="viewDataDictionary">The view data dictionary.</param>
        /// <returns>System.Object.</returns>
        private static object GetModelFromExpressionAndViewData<TModel, TSelectedValue>(Expression<Func<TModel, TSelectedValue>> expressionThatDefinesTheModel, ViewDataDictionary<TModel> viewDataDictionary)
        {
            var metaData = ModelMetadata.FromLambdaExpression(expressionThatDefinesTheModel, viewDataDictionary);

            return metaData.Model;
        }
    }
}