import React from "react";

export default function componentName({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <h2>Layout client</h2>
      <div>{children}</div>
    </>
  );
}
