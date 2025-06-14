import React, {Component} from 'react';

class UpdateContent extends Component{
  constructor(props){
    super(props);
    this.state = {
      title:this.props.data.title,
      desc:this.props.data.desc
    }
  }
  inputFormHandler(e){
    this.setState({[e.target.name]:e.target.value});
  }
  render(){
    console.log(this.props.data);
    console.log('UpdateContent render');
    return (
      <article>
        <h2>Update</h2> 
          <form action="/create_process" method="post"
            onSubmit={function(e){
              e.preventDefault();
              this.props.onSubmit(
                this.state.id,
                this.state.title,
                this.state.desc
              );
              alert('submit!!!!!');
            }.bind(this)}
          >
            <input type="hidden" name="id" value={this.state.id}></input>
            <p>
              <input type="text" name="title" placeholder="title" value={this.state.title}
              onChange={this.inputFormHandler.bind(this)}
            ></input>
            </p>
            <p>
            <textarea name="desc" placeholder="description" value={this.state.desc}
            onChange={function(e){
              this.setState({desc:e.target.value});
            }.bind(this)}>
            </textarea>
            </p>
            <p>
              <input type="submit"></input>
            </p>
          </form>
        </article>
    );
  }
}

export default UpdateContent;
