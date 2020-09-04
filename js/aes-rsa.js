
function getFileText(inputFileId,outputFileId)
{
     var fr=new FileReader();
     fr.addEventListener("loadend", function() {
       document.getElementById(outputFileId)
               .textContent=fr.result;
              });
     fr.readAsText(document.getElementById(inputFileId).files[0]);
}

var listOfPublicKeys = [];
var listOfPrivateKeys = [];
 function getUsersFromServer(outputId)
{
  $.ajax({
        url : 'php/getUsers.php',
        type : 'get',
        success : function (result) {
          var currentConsolText = null;
          var data = JSON.parse(result);
          for (var i = 0; i < data.length; i++)
           {
              currentConsolText = $('#'+outputId).val();
             $('#'+outputId).val(currentConsolText + "Username: " +  data[i]['name']+'\n'+  data[i]['publicKey']+'\n\n');
             $("#console").scrollTop($("#console").prop('scrollHeight') - $("#console").height());
             listOfPublicKeys.push(data[i]['publicKey']);
             listOfPrivateKeys.push(data[i]['privateKey']);
            }
        },
        error : function () {
           console.log("error");
        }
    })
}

function encryptFile(outputId)
{
    textToEncrypt = $('#'+outputId).val()
    var crypt = new Crypt({aesKeySize: 128});
    var encryptedText = crypt.encrypt(listOfPublicKeys,textToEncrypt);
    $('#'+outputId).val(encryptedText);
    var data = '{"encryptedFileText" :'+encryptedText+ '}';
    $.ajax({
      url : 'php/saveEncryptedToDB.php',
      type : 'post',
      data : JSON.parse(data),
      success : function (result) {
        $("#console").val($("#console").val()+"\n Encryped file has been saved to database.");
        $("#console").scrollTop($("#console").prop('scrollHeight') - $("#console").height());
        $("#decryptionLink").removeAttr('hidden');
      },
      error : function (result) {
         console.log(result);
      }
  });
}
