import {
  Contact2Icon,
  LayoutDashboard,
  NewspaperIcon,
  UserCog,
  UserRoundCog
} from "lucide-react";
const prefix = `/admin`;
export const navList = [
  {
    name: "Dashboard",
    // href: `${prefix}/dashboard`,
    href: `/`,
    type: "control",
    icon: <LayoutDashboard size={20} />,
  },
  {
    name: "Cài đặt tài khoản",
    href: `${prefix}/account-settings`,
    type: "control",
    icon: <UserCog size={20} />,
  },
  {
    name: "Bảng tin việc làm",
    href: `${prefix}/job-feeds`,
    type: "manage",
    icon: <NewspaperIcon size={20} />,
  },
  {
    name: "Quản lí người dùng",
    href: `${prefix}/user-management`,
    type: "manage",
    icon: <UserRoundCog size={20} />,
  },
  {
    name: "Liên hệ / Thôn tin",
    href: `${prefix}/contacts`,
    type: "manage",
    icon: <Contact2Icon size={20} />,
  },
];
