import { useSelector } from "react-redux";

function Header(){
    const state=useSelector((state)=>state);
    console.log("Header ",state.loggedin.Username)
    return (

        <div className="jumbotron p-3 mb-0 bg-dark text-light" style={ {  textDecorationColor:"black"}}>

            <img src={'assets/Hikinglogo.jpg'} style={{height:"70px",width:"80px"}} className="float-left" alt=""/>
            {state.loggedin.IsLoggedIn ?
            <>  
            <h5 className="float-right  mr-3 "style={{paddingTop:"5px"}}>Username {state.loggedin.Username}<br/>Role : {state.loggedin.Role}</h5> 
            </>:''}
            <h2 className="text-center"style={{paddingTop:"10px"}}>Welcome to Tour And Travel</h2>
            <div className="clearfix"></div>
        </div>
    )
}

export default Header;