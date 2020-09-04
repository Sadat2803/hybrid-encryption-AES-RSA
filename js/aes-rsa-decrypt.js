filesToDecrypt = null;
function getFilesFromServer()
{
     $.ajax({
        url : 'php/getFiles.php',
        type : 'get',
        success : function (result) {
           filesToDecrypt = JSON.parse(result);
          for (var i = 0; i < filesToDecrypt.length; i++)
           {
             $('#filesSelect').append(new Option("file "+filesToDecrypt[i]['id'], i))
           }
        },
        error : function () {
           console.log("error");
        }
    })
}
function decryptFile()
{
  var encryped = $('#fileText').val();
  var privateKey = $('#fileText').val();
  var crypt = new Crypt();
  var decryptedText = crypt.decrypt(privateKey,encryped);
  //$('#fileText').val(decryptedText);
}
