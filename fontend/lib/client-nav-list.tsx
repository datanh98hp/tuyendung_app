import {
  BookUserIcon,
  Briefcase,
  BriefcaseBusinessIcon,
  Contact2Icon,
  LayoutDashboard,
  NewspaperIcon,
  UserCog,
  UserRoundCog
} from "lucide-react";
const prefix = ``;
export const navList = [
  {
    name: "Việc làm",
    // href: `${prefix}/dashboard`,
    href: `/`,
    type: "control",
    icon: <Briefcase size={20} />,
  },
  {
    name: "Nhà tuyển dụng",
    href: `${prefix}/account-settings`,
    type: "control",
    icon: <BookUserIcon size={20} />,
  },
  {
    name: "Blog",
    href: `${prefix}/blog`,
    type: "control",
    icon: <BriefcaseBusinessIcon size={20} />,
  },
];          
