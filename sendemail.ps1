$emailto = 'email@gmail.com'
$email = 'email@gmail.com'
$SMTPServer = 'smtp.gmail.com'
$SMTPPort = '587'
$Password = 'yourpasswordhere'
$subject = 'subject'
$data = 'This is the body of the mail.'	
$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($email, $Password);
$smtp.Send($email, $emailto, $subject, $data);
