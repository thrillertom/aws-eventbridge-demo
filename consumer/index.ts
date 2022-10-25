import { Context } from "aws-lambda";
import { Event } from "./schema/xiaolong_test_user_created/Event";
import { UserUpdated } from "./schema/custom_private/userupdated/UserUpdated";

export const handler = async (
  event: Event, 
  context: Context
) => {
    console.log(`Email: ${event.email}`);
    console.log(`Event: ${JSON.stringify(event, null, 2)}`);
    console.log(`Context: ${JSON.stringify(context, null, 2)}`); 
  }
