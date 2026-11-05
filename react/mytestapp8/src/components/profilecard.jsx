import Button from "@mui/material/Button";

function ProfileCard() {
  return (
    <div className="flex justify-center items-center py-12 bg-gray-100">

      <div className="bg-white w-80 rounded-2xl shadow-xl
                      p-6 text-center hover:shadow-2xl transition">

        <img
          src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=300"
          alt="Profile"
          className="w-32 h-32 rounded-full object-cover mx-auto border-4 border-blue-400"
        />

        <h2 className="text-2xl font-bold mt-4 text-gray-800">
          Aswinth S
        </h2>

        <h3 className="text-blue-600 font-semibold mt-1">
          Full Stack Developer
        </h3>

        <p className="text-gray-500 mt-3 text-sm">
          Passionate developer interested in creating
          modern web applications and learning new technologies.
        </p>

        <Button
          variant="contained"
          color="primary"
          className="mt-5"
        >
          Follow
        </Button>

      </div>
    </div>
  );
}

export default ProfileCard;