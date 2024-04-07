import NavMenuItem from "@/components/Nav/Nav";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { navList } from "@/lib/admin-nav-list";

export default function Home() {
  return (
    <main className="w-full h-[100vh] flex pt-4 bg-gradient-to-b from-[#031544] to-[#BD6267] text-white">
      <div className="w-full h-[100vh] flex pt-4 bg-gradient-to-b from-[#031544] to-[#BD6267] text-white">
        <div className="flex flex-col pl-4 md:w-60 w-16">
          <div className="mb-4 flex items-center space-x-2 min-w-max">
            <Avatar>
              <AvatarImage src="https://as2.ftcdn.net/v2/jpg/01/63/10/55/1000_F_163105551_kfiwm8lzEWEESQDxNOt1NQk3lmiFpyYP.jpg" />
              <AvatarFallback>Logo</AvatarFallback>
            </Avatar>
            <p>JOB FRESH</p>
          </div>
          <nav className="w-full flex flex-col md:items-start items-center">
            {navList.map((item) => (
              <NavMenuItem
                key={item.name}
                name={item.name}
                href={item.href}
                type={item.type}
                icon={item.icon}
              />
            ))}
          </nav>
        </div>
        <div className="w-full md:px-20 pr-4">
          <header className="w-full flex justify-end items-center mb-4">
            {/* <form className="relative">
          <div className="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
            <svg
              className="w-4 h-4 text-gray-500 dark:text-gray-400 "
              aria-hidden="true"
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 20 20"
            >
              <path
                stroke="currentColor"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"
              />
            </svg>
          </div>
          <input
            type="search"
            id="default-search"
            className="w-full p-2 ps-10 text-sm text-gray-900 border  rounded-lg bg-gray-50 placeholder-gray-400 outline-none"
            placeholder="Search ..."
            required
          />
        </form> */}
            <div className="flex items-center space-x-2">
              <div>
                <svg
                  className="w-6 h-6 text-white dark:text-white"
                  aria-hidden="true"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 16 21"
                >
                  <path
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="2"
                    d="M8 3.464V1.1m0 2.365a5.338 5.338 0 0 1 5.133 5.368v1.8c0 2.386 1.867 2.982 1.867 4.175C15 15.4 15 16 14.462 16H1.538C1 16 1 15.4 1 14.807c0-1.193 1.867-1.789 1.867-4.175v-1.8A5.338 5.338 0 0 1 8 3.464ZM4.54 16a3.48 3.48 0 0 0 6.92 0H4.54Z"
                  ></path>
                </svg>
              </div>
              <div>
                <svg
                  className="w-6 h-6 text-white dark:text-white"
                  aria-hidden="true"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 16 21"
                >
                  <path
                    stroke="currentColor"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    strokeWidth="2"
                    d="M8 3.464V1.1m0 2.365a5.338 5.338 0 0 1 5.133 5.368v1.8c0 2.386 1.867 2.982 1.867 4.175C15 15.4 15 16 14.462 16H1.538C1 16 1 15.4 1 14.807c0-1.193 1.867-1.789 1.867-4.175v-1.8A5.338 5.338 0 0 1 8 3.464ZM4.54 16a3.48 3.48 0 0 0 6.92 0H4.54Z"
                  ></path>
                </svg>
              </div>
              <div>
                <img
                  className="w-10 h-10 rounded-full border"
                  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLlvt-qtxyphuII_0XdoG0ACLHSsFUCW7TtRwdosFJ8Q&s"
                  alt="Rounded avatar"
                ></img>
              </div>
            </div>
          </header>
          <div className="md:w-full h-[90vh]  border border-gray-500">
            <h1>Tuyen dung app</h1>
          </div>
        </div>
      </div>
    </main>
  );
}
