import BottomNav from "../components/BottomNav"
import '../styles/Home.css'
import templogo from '../assets/templogo.png'

const Home = () => {
  return (
    <>
      <header className="home-header">
        <div className="home-header-brand">
          <img alt="temporary logo" src={templogo} className="home-logo" />
          <h2>StudyAppNameTBD</h2>
        </div>

        <div className="home-header-welcome">
        <p>Good Afternoon Alice Smith!</p>
        </div>
      </header>

      <main>
        <h3>Recent Study Events From Your Network</h3>
        {/* TO DO Make the article a component */}
        <article className="home-article">
          <p>Bob Johnson</p>
          {/* This means, we need a user-event table maybe? */}
          {/* Names should be clickable links when we change this to dynamic using Link from React Routes*/}
          <p>Bob Johnson had a study event with Carol Williams</p>
        </article>
        <article className="home-article">
          <p>Alice Smith</p>
          {/* This means, we need a user-event table maybe? */}
          <p>Alice Smith joined a study group: LeetCoders</p>
        </article>
        <article className="home-article">
          <p>Carol Williams</p>
          {/* This means, we need a user-event table maybe? */}
          <p>Carol Smith shared 4 study sessions this week</p>
        </article>
      </main>
      <BottomNav />
    </>
  )
}

export default Home