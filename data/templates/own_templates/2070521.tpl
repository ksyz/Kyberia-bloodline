body {
color : #6dae42;
font-size: 8pt;
font-family: Verdana, "Arial CE", "Helvetica CE", Arial, Helvetica;
text-decoration: none;
margin: 0;
padding-bottom: 74px;
background-color: black;
background-position: top center;
background-repeat: no-repeat;
scrollbar-shadow-color: #6dae42;
scrollbar-highlight-color: #000;
scrollbar-3dlight-color: #6dae42;
scrollbar-base-color: black;
scrollbar-darkshadow-color: #000;
scrollbar-track-color: black;
scrollbar-arrow-color: black;}

/* fix menu: menu je potrebne vlozit do <div class="t1"> a podneho nasupovat div z "t2" */
.t1 {
position: fixed;
margin: 0;
text-align: center;
background-color: #000;
top: auto;
width: 100%;
height: 20px;
right: 0;
top: 0%;
left: 0;
z-index:2;
}
.t2 {height: 20px}

#topic {
        width:660px;
        padding:6px;
        display: table;
}

inframe {
width: 90%;
height:230px;
}

textarea.small {
width : 90%;
height : 42px;
border-color: #6dae42;
background-color: transparent;
overflow: hidden;
color: white;
}

a {
color: white;
font-size: 8pt;
font-family: Verdana, "Arial CE", "Helvetica CE", Arial, Helvetica;
text-decoration: none;
}

a:hover {
color: #ACA899;
font-size: 8pt;
font-family: Verdana, "Arial CE", "Helvetica CE", Arial, Helvetica;
text-decoration: none;
}

a.mail {
color: red;
font-size: 8pt;
font-weight: bold;
text-align: center;
font-family: Verdana, "Arial CE", "Helvetica CE", Arial, Helvetica;
text-decoration: none;
}

a.mail:hover {
color: white;
font-size: 8pt;
font-family: Verdana, "Arial CE", "Helvetica CE", Arial, Helvetica;
text-decoration: none;
font-weight: bold;
text-align: center;
}

a.mail:active {
border-bottom: 5px solid #333;
}


a img {border-bottom: 1px solid transparent;}

td {
font-size: 8pt;
font-family: Verdana, "Arial CE", "Helvetica CE", Arial, Helvetica;
wordwrap: break-word;
}

table[width="666"] {background: #111;}
#topic {background: #111;}

.bordered {
border: solid 0px #6dae42;
border-bottom: solid 1px #333333;
background: #000;
}

.bordered2 {
border-left: solid 1px #6dae42;
border-right: solid 1px #6dae42;
border-bottom: solid 1px #6dae42;
}


.important_y { color: red; display: block; font-size: 2em; margin: .67em 0 }
.important_n { color: green; display: block; font-size: 2em; margin: .67em 0 }


input {
color: white;
font-size: 8pt;
font-family: Verdana, Arial, Helvetica, Geneva, Swiss, SunSans-Regular;
background-color: black;
vertical-align: middle;
border: solid 1px #6dae42; height: 18px
}

input[type=submit] {
color: #6dae42;
background-color: #000;
border: 1px solid;
}

input[value='add'] {
  color: #6dae42;
  background-color: black;
  border: 0; border-top: 1px solid #6dae42; margin:0; padding: 0; height: 15px; font-size: 10px; width: 70px;
}
input[value='preview'] {
  color: #6dae42; width: 70px;
  border: 0; border-top: 1px solid #6dae42; margin:0; padding: 0; height: 15px; font-size: 10px;
}



table[width="666"] input[value='preview'] {
  border:0;
}
input[value='delete_mail'] {
  color: #6dae42;
  background-color: #000; width: 70px;
  border: 0; border-top: 1px solid #6dae42; margin:0; padding: 0; height: 15px; font-size: 10px;
}
input[value='send'] {
  color: #6dae42;
  background-color: #000; width: 70px;
  border: 0; border-top: 1px solid #6dae42; margin:0; padding: 0; height: 15px; font-size: 10px;
}

input[value='filter_by'] {
  color: #6dae42;
  background-color: transparent; width: 70px;
  border: 0; border-top: 1px solid #6dae42; margin:0; padding: 0; height: 15px; font-size: 10px;
}

.toolbar input[value='preview'], .toolbar input[value='filter_by'], .toolbar input[value='add']
{ border:0; }

table[width="666"] input[value='filter_by'] {
  border:0;
}
input[value='set_parent'] {
  color: #6dae42;
  background-color: #000; width: 70px;
  border: 0; border-top: 1px solid #6dae42; margin:0; padding: 0; height: 18px; font-size: 10px;
}

input[name='new_parent'] {
  color: #fff;
  background-color: #000;
  border: 0; border-top: 1px solid #6dae42; margin:0; padding: 0; height: 18px;
}


input[type='text'][name='new_parent']:focus {
  color: #6dae42;
  border: 0; border-top: 1px solid #fff;
}

input[type=submit]:focus {
background-color: #6dae42;
color: #fff;
}


input.small {
color: white;
font-size: 8pt;
font-family: Verdana, Arial, Helvetica, Geneva, Swiss, SunSans-Regular;
background-color: transparent;
width: 50px;
vertical-align: middle;
border: solid 1px #6dae42; height: 18px
}


.th_cnt .icon {margin-top:2px}

.header {
background: #222;
border-bottom: solid 1px #6dae42;
height: 100%;
width: 100%;
vertical-align: top;
align: left;
padding: 0pt; width: 100%;
}

.header input {
  margin:0;
  padding:0;
  width: 8pt;
  height: 8pt;
  background: #444;   /* len opera */
  border: 1px solid #000;   /* len opera */
  color: #000;
}

.th_header {
	background-color: #222;
}

#th_root {
margin:0;
padding:0;
}

#th_root > li {background:#111; margin-bottom:10px}


a.vector {
	color: #333;
	background: #333;
	text-decoration: none;
	font-size: 3px;
}

a.vector:hover {
	background: #fff;
}

.important {
font-weight: bold;
text-align: center;

}

table[width="666"] td[colspan='3'] a {
	color: #333;
	background: #333;
	text-decoration: none;
	font-size: 3px;
}

table[width="666"] td[colspan='3'] a:hover {
	background: #fff;
}

.most_important {
font-weight: bold;
font-color: red;
color: red;
}

.active_user_img {
	width: 53px;
	height: 53px;
	margin: 0;
	padding:0;
	display:block;
	float:left;
}
.active_user_img img {width: 50px; height:50px; border: 0;}

.active_user_img img:hover {border: 0; width: 53px; height: 53px;}

.active_users .active_user_name {
text-align: center;
}

td[width="16%"] {
  border: 0px solid pink;
  }



textarea {
width : 666px;
height: 123px;
background-color: transparent;
border: 1px solid #6dae42;
color: white;
font-family: monospace;
font-size: 8pt
}

textarea:focus {border: 1px solid #fff; color: #6dae42;}
input[type=text]:focus {border: 1px solid #fff; color: #6dae42;}

textarea.node_content {
width : 800px;
height: 666px;
background-color: transparent;
border: 1px solid #6dae42;
color: white;
}

textarea.node_content:focus {border: 1px solid #fff; color: #6dae42;}


input[value='delete'] {border:1px solid; font-size: 8pt; height: 18px; position: fixed; width:59px; left: 10px; bottom: auto; bottom: 10px;}
input[value='put'] { height: 18px; font-size: 8pt; border:1px solid; position: fixed; left: 70px; bottom: auto; bottom: 10px; width:40px}
input[name='nodeshell_id'] {position: fixed; left: 111px; bottom: auto; bottom: 10px; background-color: black; width:55px}

input[name='get_children_move'] {
  background: black;
  height: 10px;
  padding: 0;
  font-size: 10px;
  position: fixed;
  bottom: auto;
  bottom: 35px;
  border: 0;
  }

input[name='get_children_move']:focus {color: #fff;}



input[value='<'] { left: 10px; border: 0; border-left: 2px solid; }
input[value='<<'] { left: 30px; border: 0; border-left: 2px solid;}
input[value='>>'] { left: 120px; border: 0; border-right: 2px solid; }
input[value='>'] { left: 150px; border: 0; border-right: 2px solid; }
input[value='K'] {position: fixed; bottom: auto; bottom: 55px; background: black; border: 0; border-left: 2px solid; left: 10px; height: 10px; padding: 0; font-size: 10px;}

input[name='listing_amount'] {
  border: 0px;
  background: black;
  height: 10px;
  padding: 0;
  font-size: 10px;
  width: 20px;
  position: fixed;
  left: 80px;
  bottom: auto;
  bottom: 35px;
  }
input[name='listing_amount']:focus {border: 0; background: black;}

select {
  color: white;
  font-family: Verdana, Arial, Helvetica, Geneva, Swiss, SunSans-Regular;
  border: 1px solid transparent;
  background-color: black;
  height: 15px;
  padding: 0;
  font-size: 10px;
  vertical-align: middle;
  }

table[width="666"] select {
  background-color: #111;
}

select[name='listing_order'] {
  border: 1px solid transparent;
  background-color: black;
  height: 20px;
  padding: 0;
  font-size: 10px;
  position: fixed; left: 74px; bottom: auto; bottom: 55px;
  }
select[name='listing_order']:focus {border: 1px solid transparent; }

option {margin: 0px; background: black}

#configure select[name='listing_order'] {
	position:relative;
	left:0;
	bottom:0;
}

#configure input[name='listing_amount'] {
	position:relative;
	left:0;
	bottom:0;
}



.message { z-index:0; }

.node_userlist {
  width:666px;
  text-align:center;
  margin-bottom:10px;
  position:relative;
  z-index:0;
}

.node_userlist img {
  width: 50px;
  height: 50px;
  border: 0;
  margin: 0 3px 3px 0;
}

/* add form */
.toolbar, #own_toolbar, .add_put { background: #111; width: 666px; }

.toolbar { margin: 0 0 2px 0; padding: 2px 0 1px 0; }
#own_toolbar { margin-top: 2px; }
.add_put { margin-top: 2px; }
.add_k_cmnt { display:none; }


/* panel */
#panel {
position: absolute;
top: 0px;
left: 0px;
display: none;
z-index: 23;
color: #FFF;
background: #000;
border: 1px solid #6DAE42;
padding: 2px;
margin: 0;
}
#panel .panel_btn {
border: 0;
color: #FFF;
background: transparent;
margin: 0;
padding: 1px 0 1px 0;
}
#panel .panel_btn:hover {
color: #F00;
}
#panel form {
padding: 0;
margin: 0;
}

img[alt="NAJ.sk"], img[alt="Monitoring webu realizuje NAJ.sk"] {display:none}
img[src~="http://www.ianus.sk/aspecial/smilies/"] {display:none}