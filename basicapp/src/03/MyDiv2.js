import MyDiv3 from "./MyDiv3"
export default function MyDiv2(probs) {
  return (
    <div className="flex flex-col p-5 m-10
                        w-3/4 h-3/4
                        bg-lime-700 text-white">
        <div className="w-full flesx justify-start">
           { `${probs.dn1} > ${probs.dn2}` }
        </div>      
        <MyDiv3 />
    </div>
  )
}
 