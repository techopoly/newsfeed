import React from 'react';

import Button from '../../Button/Button';
import Image from '../../../components/Image/Image';
import './Post.css';

const post = props => (
  <article className="post">
    <header className="post__header">
      <h3 className="post__meta">
        Posted by {props.author}
      </h3>
    </header>
    <div className="post__image">
      <Image imageUrl={'http://localhost:8050/'+props.image} contain />
    </div>
    <div className="post__content">{props.content}</div>
    <div className="post__actions">
      <Button mode="flat" link={props.id}>
        View 
      </Button>
      <Button mode="flat" onClick={props.onStartEdit}>
        Edit
      </Button>
      <Button mode="flat" design="danger" onClick={props.onDelete}>
        Delete
      </Button>
    </div>
  </article>
);

export default post;
