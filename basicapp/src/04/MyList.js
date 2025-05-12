import MyListData from './MyListData.json';
import MyListitem from './MyListitem';

export default function MyList() {
  console.log(MyListData) 

   
  const tags = MyListData.map(item => 
                                <MyListitem key= {item.title}
                                            title ={item.title} 
                                            imgUrl = {item.imgUrl}
                                            content = {item.content}
                                />
                             );
  return (
    <div className='w-full grid grid-cols-2 gap-4'>
     {tags}
    </div>
  )
}
