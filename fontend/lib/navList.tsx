import {
  Contact2Icon,
  CreditCard,
  LayoutDashboard,
  NewspaperIcon,
  Table,
  UserCog,
  UserPlus,
  UserRoundCog,
} from "lucide-react";

export const navList = [
  {
    name: "Dashboard",
    href: "/",
    type: "control",
    icon: <LayoutDashboard size={20} />,
  },
  {
    name: "Account Settings",
    href: "/account-settings",
    type: "control",
    icon: <UserCog size={20} />,
  },
  {
    name: "Job Feed",
    href: "/job-feeds",
    type: "manage",
    icon: <NewspaperIcon size={20} />,
  },
  {
    name: "User management",
    href: "/user-management",
    type: "manage",
    icon: <UserRoundCog size={20} />,
  },
  {
    name: "Contacts",
    href: "/contacts",
    type: "manage",
    icon: <Contact2Icon size={20} />,
  },
];
