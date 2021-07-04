import React, { Component } from 'react';

import Image from '../../../components/Image/Image';
import './SinglePost.css';

class SinglePost extends Component {
  state = {
    title: '',
    author: '',
    date: '',
    image: '',
    content: ''
  };

  componentDidMount() {
    const postId = this.props.match.params.postId;
    fetch('http://localhost:8050/getSinglePost?id='+ postId)
      .then(res => {
        if (res.status !== 200) {
          throw new Error('Failed to fetch status');
        }
        return res.json();
      })
      .then(resData => {
        const post = resData.data[0];
        this.setState({
          title: post.vote,
          author: post.username,
          date: new Date(post.createdAt).toLocaleDateString('en-US'),
          content: post.post_content,
          image : 'http://localhost:8050/' + post.image,
          //image: 'http://localhost:8050/images/main-qimg-cf89e8e6daa9dabc8174c303e4d53d3a.png'
        });
      })
      .catch(err => {
        console.log(err);
      });
  }

  render() {
    return (
      <section className="single-post">
        <h2>
          Created by {this.state.author}
        </h2>
        <div className="single-post__image">
          <Image contain imageUrl={this.state.image} />
        </div>
        <p>{this.state.content}</p>
        <h1>Vote: {this.state.title}</h1>
      </section>
    );
  }
}

export default SinglePost;



//UPDATE `newsfeed`.`posts` SET `post_content` = 'dummy4', `username` = 'Mdd', `image` = 'img3333', `vote` = '4' WHERE (`id` = '6');