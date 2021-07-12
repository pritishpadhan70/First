<html>
    <head>
        <title>Animal Aid</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
    	
    	<%
		String msg=(String)request.getAttribute("msg");
		if(null!=msg){
			
		%>
		<center><font color="red"><h3><%= msg %></h3></font></center>
		<%
			}
		%>
    	
        <header>
            <div class="top">
                <ul class="nav-menu">
                    <li class="button"><a href="">Home</a></li>
                    <li class="button"><a href="">About</a></li>
                    <li class="button"><a href="">Contact</a></li>
                    <li class="button"><a href="Add.jsp">Join</a></li>
                </ul>
            </div>
            <div class="login">
                <form class="box" action="login">
                    <h2>Login</h2>
                    <input type="text" placeholder="Username" name="userid"><br>    
                    <input type="password" placeholder="Password" name="pass"><br>
                    <input type="submit" value="Login">
                    <div class="signupdiv">
                        <button class="signup"><a href=""></a>Register</button>
                    </div>
                </form>
                
                
                
            </div>
            <div>
                <marquee class="scrl" behavior="scroll" direction="up">
                    Victims of Charity This aims to persuade medical research charities to stop funding animal experiments and to use methods such as epidemiological studies; in vitro research using human cell and tissue cultures; clinical studies; human autopsy examinations; computerised patient-drug databases and post-marketing surveillance; mathematical models and computer simulations and non-invasive imaging techniques. Since the launch of the campaign, two major charities have committed to stop funding animal research.[6][7]
                    Slaughter Animal Aid uses hidden cameras to film in UK slaughterhouses. It has found illegal cruelty in thirteen out of fourteen slaughterhouses visited so far. Since the launch of the campaign, all the major supermarket chains have agreed to insist that their suppliers fit CCTV cameras in their slaughterhouses.[8] Animal Aid campaigns for mandatory independently monitored CCTV in all UK slaughterhouses.[9][10]
                    Horse racing This aims for an end to commercial horse racing, and as a first step, a ban on the use of the whip except for safety purposes. Whip regulations have been somewhat tightened up since the launch of the campaign. Race Horse Death Watch[11] is Animal Aidâ€™s online database that records thoroughbred deaths on British racecourses.[12]
                    Game bird shooting Animal Aid campaigns for an end to the production and shooting of animals for pleasure. Some 50 million pheasants and partridges are intensively farmed every year so that they can be released and shot for sport.[13] In 2010, the outgoing Labour government was about to ban the metal battery cages in which thousands of egg-producing pheasants and partridges are confined to their productive lives. But this was overturned by the incoming Coalition government.[14] Animal Aid continues its campaign for the cages to be outlawed.[15][16]
                    Veganism Animal Aid promotes a cruelty-free diet, provides free cookery demonstrations in schools, and sends out free information packs and other literature. A central feature of the campaign is the Great Vegan Challenge, which is staged every November.[17]
                </marquee>
            </div>
            <div  class="donatenow">
                <a class="donate" href="donatenow.jsp">Donate Now !</a>
            </div>
        </header>
    </body>
</html>