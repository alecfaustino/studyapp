import '../styles/BottomNav.css'
const BottomNav = () => {

  // TODO change the li to icons and use Link react Routes
  return (
    <>
      <div className='navbar'>

        <ul className='navlist'>
          <li>Chat</li>
          <li>Browse Profiles</li>
          <li>TBD</li>
          {/* profile would be the logged in person's photo? */}
          {/* initial working copy maybe just a stock profile button */}
          <li>Profile</li>
        </ul>

      </div>
    
    </>
  )
}

export default BottomNav