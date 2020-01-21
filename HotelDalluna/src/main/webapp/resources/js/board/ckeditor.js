/**
 * 
 */

ClassicEditor 

    .create( document.querySelector( '#notice_contents' ) ).then( editor => { 
        console.log( editor ); 
    } ) 
    .catch( error => { 
        console.error( error ); 
    } );
