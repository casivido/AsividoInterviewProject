using System;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;

namespace AsividoInterviewProject
{
    public partial class OverviewEngine : System.Web.UI.Page
    {
        private string _JSON_Filename;

        protected Occupation_Overview _Overview;


        protected void Page_Load(object sender, EventArgs e)
        {
            Initialize();
            Load_JSON();
        }


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

        private void Initialize()
        {
            //_JSON_Filename = "{\"occupation\": {\"onet\": \"15-1131\",\"title\": \"Computer Programmers\"},\"region\": {\"type\": \"MSA\",\"id\": \"42660\",\"title\": \"Seattle-Tacoma-Bellevue, WA\"},\"summary\": {\"jobs\": {\"year\": 2015,\"regional\": 12352,\"national_avg\": 6501},\"jobs_growth\": {\"start_year\": 2013,\"end_year\": 2018,\"regional\": 10.2,\"national_avg\": 8.5},\"earnings\": {\"regional\": 57.24,\"national_avg\": 38.2}},\"trend_comparison\": {\"start_year\": 2013,\"end_year\": 2018,\"regional\": [11904,12384,12352,12680,12920,13114],\"state\": [13103,13598,13599,13968,14244,14469],\"nation\": [300651,307024,314154,318998,326205]},\"employing_industries\": {\"year\": 2015,\"jobs\": 12352,\"industries\": [{\"naics\": \"511210\",\"title\": \"Software Publishers\",\"in_occupation_jobs\": 4654,\"jobs\": 52886},{\"naics\": \"541512\",\"title\": \"Computer Systems Design Services\",\"in_occupation_jobs\": 1873,\"jobs\": 20582},{\"naics\": \"541512\",\"title\": \"Custom Computer Programming Services\",\"in_occupation_jobs\": 1388,\"jobs\": 15252},{\"naics\": \"541512\",\"title\": \"Aircraft Manufacturing\",\"in_occupation_jobs\": 444,\"jobs\": 71612},{\"naics\": \"541512\",\"title\": \"Other Computer Related Services\",\"in_occupation_jobs\": 296,\"jobs\": 3245}]}}";
        }

        protected string ColorNumber(float x, string text)
        {
            string output = "";

            if(x < 0)
            {
                output += "<span style=\"color: #ff0000\">+" + text + "</span>";
            }
            else if(x > 0)
            {
                output += "<span style=\"color: #3cb371\">" + text + "</span>";
            }
            else
            {
                output += text;
            }

            return output;
        }

        protected string ColorNumber(float x, string above, string below)
        {
            string output = "";

            if (x < 0)
            {
                output += "<span style=\"color: #ff0000\">+" + below + "</span>";
            }
            else if (x > 0)
            {
                output += "<span style=\"color: #3cb371\">" + above + "</span>";
            }
            else
            {
                output += above;
            }

            return output;
        }
    }
}