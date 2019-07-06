var nodemailer = require('nodemailer');
let protocol = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: "yogendra18@navgurukul.org",
        pass: "yourpass"
    },
})
let Mail = {
    from: "yogendra18@navgurukul.org",
    to: 'pratik18@navgurukul.org',
    // to:'prakash18@navgurukul.org',
    subject: "OTP of Your Gmail",
    text: "I will call you"

}
protocol.sendMail(Mail, (error, info) =>{
    if(error){
        return console.log(error);
        res.send("Error 404 Not found")
    } else {
        
    }
})