<%@ Page Title="Summary" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="AsividoInterviewProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2>About the project...</h2>
    <div class="well well-md">

        <h4><strong>Initial Thoughts...</strong></h4>
        <p>
            Front end web design seemed daunting and as if I needed to take an entire collegiate course to understand it.  Html is something that is widely used, but I have only minorly dabbled in it.
            Languages that I was confident in were primarily the three C's (C/C++/C#), so I was really hoping there would be a great web option in those.  This eight hour limit I was given was an
            understatement, given all the research and digging I was going to need to do.  But that's what learning is all about, right?  Here are a few of my biggest questions/thoughts at the start:
        </p>
        <p><strong>
            1. What languages are needed to write a webpage?<br />
            2. How do you use html?<br />
            3. Is bootstrap an actual strap for boots?<br />
            4. I have used Json, and remember 10% of previous knowledge.  I hope that knowledge will come flooding back.<br />
            5. Creating the data structures of this json file should be easy.<br />
            6. When I managed to complete this, how does one publish a website?<br />
            7. Why did I only give myself two days? I should've proposed to my girlfriend next week.<br />
           </strong>
        </p>
        <hr />
        <h4><strong>Progression...</strong></h4>
        <p>
            After a small amount of research, I landed on ASP .NET Web Forms through Visual Studios.  Here is where the fun began.  Most of the learning came from looking at the sample html code and
            replicating it to do what I wanted.  I noticed keywords that were not in the display toolbox, so I searched them.  Lo and behold, I was using bootstrap, and it made life much easier.
            Throwing some garnish here and some polish there, I made a website that looked passable, and now it was time to create the overview page.  All of the project specifications dealt with this
            overview page, and it held nearly all of the work.
            <br /><br />
            First step, get the Json data.  I quickly took a look at the file and replicated the Json objects into structs.  Initially I was going to import the file directly, until I realized importing
            the file from a URL was much easier.  A simple Json line deserialized the entire file into the objects I had created.
            <br /><br />
            Second step, figure out how to put data from the code-behind into a reasonable format on the aspx display file. Spending an unreasonable amount of time looking up vertical rules, horizontal rules,
            columns, and rows, the data started to flow nicely.  Much of the page started out with general samples online progressing to a guess and check on my site.  Bootstrap made the tables easy, and 
            the intuitive design of html allowed me to understand concepts very quickly.
            <br /><br />
            Lastly, the issues.  Leaving the hardest for last, I struggled primarily with three things.  One was foolish; changing text to green or red according to the polarity of a number.  Realizing
            a simple function in the code-behind could produce html output, this was solved with one overloaded function (ColorText). Problems 2 and 3 remain unsolved due to time restraints.  These are the line graph 
            and the progress-bar-like display within the 'Industries Employing...' section.  A few hours were spent looking at implementations of different line graphs, but I was unable to find a good implementation
            with an easy to use interface.  Due to time, I decided to place each of these issues on hold, finishing the project without them.
        </p>
        <hr />
        <h4><strong>Final Words...</strong></h4>
        <p>
            Publishing a working webpage has felt like a huge accomplishment.  Not only do I have something to look back on to say, "I did this," but I have a base of knowledge to do bigger and better things
            down the road.  My confidence writing in html has been greatly boosted, but moreso is my desire to get better and utilize it for something more than a web page createable in a day.  This was a great
            project, but I am looking forward to much more.
        </p>
    </div>

</asp:Content>