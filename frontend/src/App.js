
import React,{useEffect, useState} from "react"

const App = () =>{

    const [data,setData] = useState('Loading...')

    const callApi = async () =>{
      try{
        const res = await fetch("http://localhost:4000/")
        const data = await res.json()
        setData(data)
      }catch(err){
        console.log('Error:',err)
      }
    }

    useEffect(() =>{
      callApi()
    },[])

  return (
    <div>
      <h1>Backend Response : </h1>
      <p>{data}</p>
    </div>
  )
}

export default App;