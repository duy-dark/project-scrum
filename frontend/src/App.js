import React, { useState, useEffect} from 'react'
import './Styles/app.scss';
import httpBoards from './Api/boards'
import Card from 'react-bootstrap/Card';
import util from './Utils'

function App() {
  const [boards, setBoards] = useState([]);
  useEffect(() => {
    async function fetchData() {
      let result = await httpBoards.getListBoards()
      console.log(result.data.boards)
      setBoards(result.data.boards)
    }
    fetchData()
  }, [])

  return (
    <div className="App">
      <div className="list-card">
        {boards.map(item => (
          <Card key={item.id} className="card-item">
            <Card.Body>
              <Card.Title>{item.name}</Card.Title>
              <Card.Text>công việc {item.id} của duy </Card.Text>
              <div className="card-item__date">created: {util.formatDate(item.createdAt)}</div>
            </Card.Body>
          </Card>
        ))}
      </div>
    </div>
  );
}

export default App;
