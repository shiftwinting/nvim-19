Vim�UnDo� $����Yė�)�$��ܻyF_�9u��p�   1                                  ` V�   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             ` S!     �                   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` S'     �                  import React5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` S+     �                  �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` S1     �                 import {grapql}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` S6     �                  �               5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             ` SC    �                 "import Layout from "../components"5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             ` SG     �               5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             ` SH     �                  5�_�      
           	      )    ����                                                                                                                                                                                                                                                                                                                                                             ` SR     �                 )export default function MyFiles({ data })5�_�   	              
      +    ����                                                                                                                                                                                                                                                                                                                                                             ` SR     �             �                 ,export default function MyFiles({ data }) {}5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             ` SW     �                 console.log()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` SX     �                 console.log(data)5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             ` S[     �      	   	    �      	           return ()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` S`     �      
   
          <Layout>5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             ` Sn     �                     <div> Hello World </div>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ` Ss     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ` St     �                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` S~     �                �             �                 export const query = grapql``5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             ` S�     �             �               
  query {}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ` S�    �             �              �                	  query {       all      }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V       ` S�     �               +export default function MyFiles({ data }) {5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ` S�    �               query MyQuery {     site {       id     }     allFile {       edges {         node {   
        id           accessTime           base           blocks           ext         }       }     }   }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        ` TB    �               import {grapql} from "gatsby"5�_�                          ����                                                                                                                                                                                                                                                                                                                                                V       ` Ty    �               export const query = grapql`5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ` U'    �                   �               �                 import React from "react"   import {graphql} from "gatsby"   )import Layout from "../components/layout"       )export default function MyFiles({data}) {     console.log(data)   
  return (       <Layout>         <div> Hello World </div>       </Layout>     )   }       export const query = graphql`     query MyQuery {   
    site {         id       }       allFile {         edges {           node {             id             accessTime             base             blocks             ext   	        }         }       }     }   `5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        ` V�   
 �                   �               �                 import React from "react"    import { graphql } from "gatsby"   )import Layout from "../components/layout"       +export default function MyFiles({ data }) {     console.log(data)   
  return (       <Layout>         <div>Hello world</div>       </Layout>     )   }       export const query = graphql`   	  query {       allFile {         edges {           node {             relativePath             prettySize             extension   "          birthTime(fromNow: true)   	        }         }       }     }   `5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V       ` Td    �                   �              �                 import React from "react"    import { graphql } from "gatsby"   )import Layout from "../components/layout"       +export default function MyFiles({ data }) {     console.log(data)   
  return (       <Layout>         <div>Hello world</div>       </Layout>     )   }       export const query = graphql`   	  query {       allFile {         edges {           node {             relativePath             prettySize             extension   "          birthTime(fromNow: true)   	        }         }       }     }   `5��