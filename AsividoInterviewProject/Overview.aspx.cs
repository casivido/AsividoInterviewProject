using System;
using Newtonsoft.Json;
using System.IO;
using System.Net;

namespace AsividoInterviewProject
{
    // Author: Christian Asivido
    // Overview page code-behind to use a GET Request to create an Occupation Overview
    public partial class OverviewEngine : System.Web.UI.Page
    {
        private string _JSON_Filename;

        protected Occupation_Overview _Overview;


        protected void Page_Load(object sender, EventArgs e)
        {
            Load_JSON();
        }

        // Author: Christian Asivido
        // Takes a preloaded JSON Get Request URL and deserializes the objects into _Overview
        private void Load_JSON()
        {
            string contents = string.Empty;
            string url = @"http://www.mocky.io/v2/5a29b5672e00004a3ca09d33";

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            request.AutomaticDecompression = DecompressionMethods.GZip;

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream))
            {
                contents = reader.ReadToEnd();
            }

            _Overview = JsonConvert.DeserializeObject<Occupation_Overview>(contents);
        }

        // Author: Christian Asivido
        // OVERLOADED
        // Checks polarity of a number and returns the text in either green/red, pos/neg
        protected string ColorText(float x, string text)
        {
            string output = "";

            if(x < 0)
            {
                output += "<span style=\"color: #ff0000\">+" + text + "</span>";
            }
            else if(x > 0)
            {
                output += "<span style=\"color: #0bb70d\" > " + text + "</span>";
            }
            else
            {
                output += text;
            }

            return output;
        }

        // Author: Christian Asivido
        // OVERLOADED
        // Checks polarity of a number and returns above/below in either green/red, pos/neg
        protected string ColorText(float x, string above, string below)
        {
            string output = "";

            if (x < 0)
            {
                output += "<span style=\"color: #ff0000\">+" + below + "</span>";
            }
            else if (x > 0)
            {
                output += "<span style=\"color: #0bb70d\">" + above + "</span>";
            }
            else
            {
                output += above;
            }

            return output;
        }
    }
}