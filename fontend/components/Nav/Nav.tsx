import Link from "next/link";


export default function NavMenuItem({
  name,
  href,
  type,
  icon,
}: {
  name: string;
  href: string;
  type ?: string;
  icon: JSX.Element;
}) {
  return (
    <>
      <Link href={href} className="nav-item">
        {icon}
        <p className="md:block hidden">{name}</p>
      </Link>
    </>
  );
}
