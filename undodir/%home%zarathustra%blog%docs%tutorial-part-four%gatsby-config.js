Vim�UnDo� ���2s[Eb�_�k�wRyӘH\֊Y����t>              !                      ` U    _�                             ����                                                                                                                                                                                                                                                                                                                                       
           V        ` L/     �               �               �                module.exports = {     /* Your site config here */     plugins: [],   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ` L0    �               module.exports = {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` L�     �      	             �      	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` L�     �      
       �      
             siteMetadata: {}5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             ` L�     �   	                }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` L�    �      
               �      
       5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             ` L�    �   	   
           5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             ` L�     �                 module.exports = {5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             ` L�    �                   siteMetadata: {   &      title: 'Title from siteMetadata'       },5�_�   	              
   	       ����                                                                                                                                                                                                                                                                                                                                                             ` O    �      
         $    title: 'Title from siteMetadata'5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             ` Q     �                   �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` Q     �             �                   {}5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                             ` Q     �               )      resolve: `gatsby-source-filesystem`5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` Q     �                     �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` Q     �             �                     options: {}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` Q     �                     }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ` Q#     �                       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` Q,     �                       name: `src`,5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ` Q6    �                       path: `${__dirname}`5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ` Q=     �                 5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             ` Q>   	 �               !        path: `${__dirname}/src/`5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ` Q�   
 �               �               �                module.exports = {     siteMetadata: {       title: 'Pandas Eating Lots'     },     plugins: [       {   *      resolve: `gatsby-source-filesystem`,         options: {           name: `src`,   "        path: `${__dirname}/src/`,         },       }       `gatsby-plugin-emotion`,       {   *      resolve: `gatsby-plugin-typography`,         options: {   3        pathToConfigModule: `src/utils/typography`,         },       },     ],   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ` Q�    �               �               �                module.exports = {     siteMetadata: {        title: `Pandas Eating Lots`,     },     plugins: [       {   *      resolve: `gatsby-source-filesystem`,         options: {           name: `src`,   "        path: `${__dirname}/src/`,         },       },       `gatsby-plugin-emotion`,       {   *      resolve: `gatsby-plugin-typography`,         options: {   3        pathToConfigModule: `src/utils/typography`,         },       },     ],   }5�_�                             ����                                                                                                                                                                                                                                                                                                                                       !           V        ` U     �              �              �                import React from "react"    import { graphql } from "gatsby"   )import Layout from "../components/layout"       +export default function MyFiles({ data }) {     console.log(data)   
  return (       <Layout>         <div>Hello world</div>       </Layout>     )   }       export const query = graphql`   	  query {       allFile {         edges {           node {             relativePath             prettySize             extension   "          birthTime(fromNow: true)   	        }         }       }     }   `5��