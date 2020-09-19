import React from "react";
import { Container, Typography, makeStyles } from "@material-ui/core";
import { StyledTabs, StyledTab, TabPanel } from "./TabComponent";
import ResquestTable from "./ResquetTable";

const useStyles = makeStyles((theme) => ({
  container: {
    borderRadius: 30,
    background: "#FFF",
    minHeight: "80vh",
    padding: "20px 50px",
  },
}));

export default function TableContainer({ data }) {
  const classes = useStyles();

  const [tabIndex, setTabIndex] = React.useState(0);

  const handleChange = (event, newValue) => {
    setTabIndex(newValue);
  };

  return (
    <Container className={classes.container}>
      <Typography variant="h5" style={{ fontWeight: "bolder" }}>
        Listas
      </Typography>

      <StyledTabs
        value={tabIndex}
        onChange={handleChange}
        aria-label="styled tabs example"
      >
        <StyledTab label="Não atendidas" {...a11yProps(0)} />
        <StyledTab label="Atendidas" {...a11yProps(1)} />
      </StyledTabs>

      <TabPanel value={tabIndex} index={0}>
        <ResquestTable data={data} />
      </TabPanel>
    </Container>
  );
}

function a11yProps(index) {
  return {
    id: `simple-tab-${index}`,
    "aria-controls": `simple-tabpanel-${index}`,
  };
}