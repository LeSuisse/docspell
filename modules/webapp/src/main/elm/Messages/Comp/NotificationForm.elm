module Messages.Comp.NotificationForm exposing (Texts, gb)

import Http
import Messages.Basics
import Messages.Comp.CalEventInput
import Messages.Comp.HttpError


type alias Texts =
    { basics : Messages.Basics.Texts
    , calEventInput : Messages.Comp.CalEventInput.Texts
    , httpError : Http.Error -> String
    , reallyDeleteTask : String
    , startOnce : String
    , startTaskNow : String
    , selectConnection : String
    , deleteThisTask : String
    , enableDisable : String
    , summary : String
    , summaryInfo : String
    , sendVia : String
    , sendViaInfo : String
    , recipients : String
    , recipientsInfo : String
    , tagsInclude : String
    , tagsIncludeInfo : String
    , tagsExclude : String
    , tagsExcludeInfo : String
    , remindDaysInfo : String
    , remindDaysLabel : String
    , capOverdue : String
    , capOverdueInfo : String
    , schedule : String
    , scheduleClickForHelp : String
    , scheduleInfo : String
    , connectionMissing : String
    , invalidCalEvent : String
    , remindDaysRequired : String
    , recipientsRequired : String
    }


gb : Texts
gb =
    { basics = Messages.Basics.gb
    , calEventInput = Messages.Comp.CalEventInput.gb
    , httpError = Messages.Comp.HttpError.gb
    , reallyDeleteTask = "Really delete this notification task?"
    , startOnce = "Start Once"
    , startTaskNow = "Start this task now"
    , selectConnection = "Select connection..."
    , deleteThisTask = "Delete this task"
    , enableDisable = "Enable or disable this task."
    , summary = "Summary"
    , summaryInfo = "Some human readable name, only for displaying"
    , sendVia = "Send via"
    , sendViaInfo = "The SMTP connection to use when sending notification mails."
    , recipients = "Recipient(s)"
    , recipientsInfo = "One or more mail addresses, confirm each by pressing 'Return'."
    , tagsInclude = "Tags Include (and)"
    , tagsIncludeInfo = "Items must have all the tags specified here."
    , tagsExclude = "Tags Exclude (or)"
    , tagsExcludeInfo = "Items must not have any tag specified here."
    , remindDaysLabel = "Remind Days"
    , remindDaysInfo = "Select items with a due date *lower than* `today+remindDays`"
    , capOverdue = "Cap overdue items"
    , capOverdueInfo = "If checked, only items with a due date *greater than* `today - remindDays` are considered."
    , schedule = "Schedule"
    , scheduleClickForHelp = "Click here for help"
    , scheduleInfo =
        "Specify how often and when this task should run. "
            ++ "Use English 3-letter weekdays. Either a single value, "
            ++ "a list (ex. 1,2,3), a range (ex. 1..3) or a '*' (meaning all) "
            ++ "is allowed for each part."
    , connectionMissing = "No E-Mail connections configured. Goto E-Mail Settings to add one."
    , invalidCalEvent = "The calendar event is not valid."
    , remindDaysRequired = "Remind-Days is required."
    , recipientsRequired = "At least one recipient is required."
    }