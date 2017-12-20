using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsividoInterviewProject
{
    public struct Occupation
    {
        public string onet { get; set; }
        public string title { get; set; }

        public Occupation(string onet, string title)
        {
            this.onet = onet;
            this.title = title;
        }
    }

    public struct Region
    {
        public string type { get; set; }
        public string id { get; set; }
        public string title { get; set; }

        public Region(string type, string title, string id)
        {
            this.type = type;
            this.title = title;
            this.id = id;
        }
    }

    public struct Jobs
    {
        public int year { get; set; }
        public int regional { get; set; }
        public int national_avg { get; set; }
        
        public Jobs(int year, int regional, int national_avg)
        {
            this.year = year;
            this.regional = regional;
            this.national_avg = national_avg;
        }
    }

    public struct Jobs_Growth
    {
        public int start_year { get; set; }
        public int end_year { get; set; }
        public float regional { get; set; }
        public float national_avg { get; set; }

        public Jobs_Growth(int start_year, int end_year, float regional, float national_avg)
        {
            this.start_year = start_year;
            this.end_year = end_year;
            this.regional = regional;
            this.national_avg = national_avg;
        }
    }

    public struct Earnings
    {
        public float regional { get; set; }
        public float national_avg { get; set; }

        public Earnings(float regional, float national_avg)
        {
            this.regional = regional;
            this.national_avg = national_avg;
        }
    }
    public struct Summary
    {
        public Jobs jobs { get; set; }
        public Jobs_Growth jobs_growth { get; set; }
        public Earnings earnings { get; set; }

        public Summary(Jobs job_count, Jobs_Growth job_growth_count, Earnings earning_nums)
        {
            jobs = job_count;
            jobs_growth = job_growth_count;
            earnings = earning_nums;
        }
    }

    public struct Trend_Comparison
    {
        public int start_year { get; set; }
        public int end_year { get; set; }
        public int[] regional { get; set; }
        public int[] state { get; set; }
        public int[] nation { get; set; }

        public Trend_Comparison(int start_year, int end_year, int[] regional, int[] state, int[] nation)
        {
            this.start_year = start_year;
            this.end_year = end_year;
            this.regional = regional;
            this.state = state;
            this.nation = nation;
        }
    }

    public struct Industry
    {
        public string naics { get; set; }
        public int in_occupation_jobs { get; set; }
        public int jobs { get; set; }
        public string title { get; set; }

        public Industry(string naics, int in_occupation_jobs, int jobs, string title)
        {
            this.naics = naics;
            this.in_occupation_jobs = in_occupation_jobs;
            this.jobs = jobs;
            this.title = title;
        }
    }

    public struct Employing_Industries
    {
        public int year { get; set; }
        public int jobs { get; set; }
        public Industry[] industries { get; set; }

        public Employing_Industries(int year, int jobs, Industry[] industries)
        {
            this.year = year;
            this.jobs = jobs;
            this.industries = industries;
        }
    }

    public struct Occupation_Overview
    {
        public Occupation occupation { get; set; }
        public Region region { get; set; }
        public Summary summary { get; set; }
        public Trend_Comparison trend_comparison { get; set; }
        public Employing_Industries employing_industries { get; set; }
    }
}