welcome@jaisairams-Laptop ~ % curl -X POST http://localhost:8000/api/v1/chat/ \
  -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIwMTlkYmQwYi1hM2YzLTc2MmItYTNkNy1iODZiNTI5ZGEwMzMiLCJpYXQiOjE3NzY5OTMxNzksImV4cCI6MTc3Njk5NDk3OSwidHlwZSI6ImFjY2VzcyJ9.WoFSOSOQVPvqR68olziwf0kXp4FyrrTOSrGEEBMIIHQ" \
  -H "Content-Type: application/json" \
  -d '{"session_id":"352d3632-a061-4ab8-ba9f-258e8e8a2f0b","message":"Hi, what time is it in Tokyo?"}'

{"session_id":"352d3632-a061-4ab8-ba9f-258e8e8a2f0b","reply":"It's currently 10:28 AM in Tokyo. Let me know if you need anything else!","interrupted":false,"thread_id":null,"approval_request":null}%


  curl -X 'GET' \
  'http://localhost:8000/api/v1/runs/352d3632-a061-4ab8-ba9f-258e8e8a2f0b/state' \
-H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIwMTlkYmQwYi1hM2YzLTc2MmItYTNkNy1iODZiNTI5ZGEwMzMiLCJpYXQiOjE3NzY5OTMxNzksImV4cCI6MTc3Njk5NDk3OSwidHlwZSI6ImFjY2VzcyJ9.WoFSOSOQVPvqR68olziwf0kXp4FyrrTOSrGEEBMIIHQ" \
-H "Content-Type: application/json"


curl -X 'POST' \
  'http://localhost:8000/api/v1/runs/352d3632-a061-4ab8-ba9f-258e8e8a2f0j/resume' \
-H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIwMTlkYmQwYi1hM2YzLTc2MmItYTNkNy1iODZiNTI5ZGEwMzMiLCJpYXQiOjE3NzY5OTMxNzksImV4cCI6MTc3Njk5NDk3OSwidHlwZSI6ImFjY2VzcyJ9.WoFSOSOQVPvqR68olziwf0kXp4FyrrTOSrGEEBMIIHQ" \
-H "Content-Type: application/json" \
-d '{ "action": "approved","feedback": "Looks good, proceed."}'


curl -X 'POST' \
  'http://localhost:8000/api/v1/runs/352d3632-a061-4ab8-ba9f-258e8e8a2f0d/resume' \
-H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIwMTlkYmQwYi1hM2YzLTc2MmItYTNkNy1iODZiNTI5ZGEwMzMiLCJpYXQiOjE3NzY5OTMxNzksImV4cCI6MTc3Njk5NDk3OSwidHlwZSI6ImFjY2VzcyJ9.WoFSOSOQVPvqR68olziwf0kXp4FyrrTOSrGEEBMIIHQ" \
-H "Content-Type: application/json" \
-d '{ "action": "approved","feedback": "Looks good, proceed."}'