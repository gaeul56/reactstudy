// import logo from './logo.svg';
import './App.css';
// import Hello from './01/Hello';
import MyClock from './02/MyClock';
import { IoHomeOutline } from "react-icons/io5";
import MyDiv1 from './03/MyDiv1';



function App() {
  return (
    <div className="flex flex-col w-full h-screen mx-auto">
     <header className='flex justify-between items-center text-xl font-bold h-20 p-10 bg-slate-200'>
      <p>리액트 기초</p>
      <p> <IoHomeOutline /> </p>    
     </header>
     <main className='grow w-full flex justify-center items-center overflow-y-auto'>
      <MyDiv1 />
     </main>
    <footer className='flex justify-center items-center h-20 bg-black text-slate-100'>
      c seogaeul
    </footer>
    </div>
  );
}

export default App;
