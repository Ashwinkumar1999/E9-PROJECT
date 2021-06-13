<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Fluffy Character Based Information Trustworthiness</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/upload.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller-700.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
    <style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
    <style>
                    #myProgress {
                        width: 100%;
                        background-color: #ddd;
                    }

                    #myBar {
                        width: 1%;
                        height: 30px;
                        background-color: #4CAF50;
                    }
                </style>
        <script>
                                                                    function move() {
                                                                        var elem = document.getElementById("myBar");   
                                                                        var width = 1;
                                                                        var id = setInterval(frame, 10);
                                                                        function frame() {
                                                                            if (width >= 100) {
                                                                                clearInterval(id);
                                                                            } else {
                                                                                width++; 
                                                                                elem.style.width = width + '%'; 
                                                                            }
                                                                        }
                                                                    }
                                                                </script>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform">
      </div>
      <div class="logo">
        <h1><a> <small>Fluffy Character Based Information Trustworthiness 
                    Reviewing For Dependable Cloud Capacity Frameworks</small></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="File_Upload.jsp"><span>File Upload</span></a></li>
          <li><a href="MyFiles.jsp"><span>My Files</span></a></li>
          <li><a href="audit_request.jsp"><span>Audit Request</span></a></li>
          <li><a href="user_check.jsp"><span>Proof Check</span></a></li>
          <li><a href="index.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <h2 align="center">File Upload</h2>

<!-- Upload  -->
<form id="file-upload-form" action="Upload" method="post" enctype="multipart/form-data" class="uploader">
    <br>
    <br>
    <br>
    <br>
        <p>File Name</p><input for="file-upload" name="fname" id="file-drag" id="file-upload" type="text" />
            <br></br>
            <br></br>
  <input id="file-upload" type="file" name="data"  />

  <label for="file-upload" id="file-drag">
    <img id="file-image" src="#" alt="Preview" class="hidden">
    <div id="start">
      <i class="fa fa-download" aria-hidden="true"></i>
      <div>Select a file or drag here</div>
      <div id="notimage" class="hidden">Please select an file</div>
      <span id="file-upload-btn" class="btn btn-primary">Select a file</span>
    </div>
    <div id="response" class="hidden">
      <div id="messages"></div>
      <progress class="progress" id="file-progress" value="0">
        <span>0</span>%
      </progress>
    </div>
  </label>
  <br>
  <br>
  <br>
  <br>
  <br>
       <button type="submit"  class="btn btn-success btn-lg" onclick="move()" style="background-color: green;">Upload</button>
</form>
<div id="myProgress"><div id="myBar"></div></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>

