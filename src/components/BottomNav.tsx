import '../styles/BottomNav.css'
const BottomNav = () => {

  // TODO change the li to icons and use Link react Routes
  return (
    <>
      <div className='navbar'>

        <ul className='navlist'>
          <li>Chat</li>
          <li>Browse Profiles</li>
          {/* Start Study Session should be a new flow into a page where you can initiate a study session with someone or a solo study session */}
          {/* A solo study Session initiates a pomodoro timer type thing */}
          {/* Either a group or a solo study session should be counting towards their streak */}
          {/* A streak (like github commit map) should be on their profile */}
          <li>Start Study Session</li>
          <li>Notifications</li>
          {/* profile would be the logged in person's photo? */}
          {/* initial working copy maybe just a stock profile button */}
          <li>Profile</li>
        </ul>

      </div>
    
    </>
  )
}

export default BottomNav