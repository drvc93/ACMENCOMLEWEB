using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Text;

namespace ACMENCOMLEWEB
{
    public partial class SubirFoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void FTPUpload(object sender, EventArgs e)
        {
            //FTP Server URL.
            string ftpurl = "ftp://ftp.Smarterasp.net/";

            //FTP Folder name. Leave blank if you want to upload to root folder.
            string ftpFolder = "Imgs/";

            byte[] fileBytes = null;

            //Read the FileName and convert it to Byte array.
            string source = FileUpload1.FileName;
            string fileName = Path.GetFileName(FileUpload1.FileName);

            string ftpfullpath = ftpurl;
            FtpWebRequest ftp = (FtpWebRequest)FtpWebRequest.Create(ftpfullpath);
            ftp.Credentials = new NetworkCredential("drvc2110-001", "danivicr093");

            ftp.KeepAlive = true;
            ftp.UseBinary = true;
            ftp.Method = WebRequestMethods.Ftp.UploadFile;

            FileStream fs = File.OpenRead(fileName);
            byte[] buffer = new byte[fs.Length];
            fs.Read(buffer, 0, buffer.Length);
            fs.Close();

            Stream ftpstream = ftp.GetRequestStream();
            ftpstream.Write(buffer, 0, buffer.Length);
            ftpstream.Close();



          /*  using (StreamReader fileStream = new StreamReader( FileUpload1.PostedFile.InputStream))
            {
                fileBytes = Encoding.UTF8.GetBytes(fileStream.ReadToEnd());
                fileStream.Close();
            }

            try
            {
                //Create FTP Request.
                FtpWebRequest request = (FtpWebRequest)WebRequest.Create(ftp + ftpFolder + fileName);
                request.Method = WebRequestMethods.Ftp.UploadFile;

                //Enter FTP Server credentials.
                request.Credentials = new NetworkCredential("drvc2110-001", "danivicr093");
                request.ContentLength = fileBytes.Length;
                request.UsePassive = true;
                request.UseBinary = true;
                request.ServicePoint.ConnectionLimit = fileBytes.Length;
                request.EnableSsl = false;

                using (Stream requestStream = request.GetRequestStream())
                {
                    requestStream.Write(fileBytes, 0, fileBytes.Length);
                    requestStream.Close();
                }

                FtpWebResponse response = (FtpWebResponse)request.GetResponse();

                lblMessage.Text += fileName + " uploaded.<br />";
                response.Close();
            }
            catch (WebException ex)
            {
                throw new Exception((ex.Response as FtpWebResponse).StatusDescription);
            }*/
        }
    }
}