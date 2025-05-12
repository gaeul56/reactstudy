import TailButton from "../UI/TailButton"

export default function Lotto() {
  const handleOK = () => {
    let arr = [];

    while(arr.length < 7) {
      let n = Math.floor(Math.random() * 45) + 1;

      if(!arr.includes(n)) arr.push(n);
    }

    let bonus = arr.splice(-1);
    arr.sort((a, b) => (a-b));
    console.log(arr, bonus)
 }

  return (
    <div className="w-full flex flex-col
                    justify-center items-center">
        <div>
            ball
        </div>
        <div>
            <TailButton caption='로또번호생성' bcolor='orange' handleClick={handleOK}></TailButton>
        </div>
    </div>
  )
}
