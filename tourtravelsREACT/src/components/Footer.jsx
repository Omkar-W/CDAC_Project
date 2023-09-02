

import { Link } from "react-router-dom";

function Footer(){
  return(
    <>
    <div className="container-fluid  my-5 bg-dark text-light" style={{backgroundColor: "#1c2331;",marginTop:"0px"}}>

    <footer className="bd-footer py-4 py-md-5 mt-5"
            style={{backgroundColor: "#1c2331;"}}
            >
     <div className="container py-4 py-md-5 px-4 px-md-3">      
      <section className="">
        <div className="container text-center text-md-start ">
      
          <div className="row mt-3">
   
            <div className="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          

              <h6 className="text-uppercase fw-bold">HIKERSTOP</h6>
            <hr
                className="mb-4 mt-0 d-inline-block mx-auto"
                style={{width: "60px", backgroundColor: "#7c4dff", height: "2px"}}
                />
              <p className="text-left">

              Leading organization engaged in conducting adventure activities that include trekking, 
              mountaineering, jungle safaris etc. throughout Sahyadri as well as the mighty Himalayas.

              </p>
            </div>
         

          
            <div className="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
           
              <h6 className="text-uppercase fw-bold">Useful links</h6>
              <hr
                className="mb-4 mt-0 d-inline-block mx-auto"
                style={{width: "60px", backgroundColor: "#7c4dff", height: "2px"}}
              />
              <p>
                <Link to="">Home</Link>
              </p>
              <p>
                <Link to="">category</Link>
              </p>
              <p>
                <Link to="" >Login</Link>
              </p>
              <p>
                <Link to="">Register</Link>
              </p>
            </div>
         

          
            <div className="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            
              <h6 className="text-uppercase fw-bold">Contact</h6>
              <hr
                className="mb-4 mt-0 d-inline-block mx-auto"
                style={{width: "60px", backgroundColor: "#7c4dff", height: "2px"}}
                />
              <p><i className="fas fa-home mr-3"></i>  </p>
              <p><i className="fas fa-envelope mr-3"></i> tourtravels@gmail.com</p>
              <p><i className="fas fa-phone mr-3"></i> + 7894561231</p>
              <p><i className="fas fa-print mr-3"></i> + 987654321</p>
            </div>
       
          </div>
      
        </div>
     </section>
    

   
    <div
         className="text-center p-3"
         style={{backgroundColor: "rgba(0, 0, 0, 0.2)"}}
         >
      © 2022 Copyright:
      <Link  to=""
         >tourtravels.com</Link
        >
    </div>
    </div>   
  </footer>


</div>
</>
);
}



export default Footer;

