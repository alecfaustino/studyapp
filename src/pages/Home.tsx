import BottomNav from "../components/BottomNav"
import '../styles/Home.css'
import templogo from '../assets/templogo.png'

const Home = () => {
  return (
    <>
      <header className="home-header">
        <img alt="temporary logo" src={templogo} className="home-logo" />
        <h2>StudyAppNameTBD</h2>
      </header>

      <main>
        <h3>Recent Study Events From Your Network</h3>
        {/* TO DO Make the article a component */}
        <article className="home-article">
          <p>Alec Faustino</p>
          {/* This means, we need a user-event table maybe? */}
          <p>Alec Faustino had a study event with John Doe</p>
        </article>
      </main>
      <BottomNav />
    </>
  )
}

export default Home